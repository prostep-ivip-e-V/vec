"""List the differences between the published VEC model and the development model.

The wiki index (.claude/index/) is built from the published model. Changes that were already
made in the development model but are not yet published are invisible there. This tool lists
them, so that an analysis can take them into account.

Usage (from the wiki root):
  .venv/bin/python .claude/tools/model/model_drift.py [--published <mdxml>] [--dev <mdxml>]
                                                       [--filter <text>] [--docs]

  --filter  only report elements whose qualified name contains <text> (case insensitive)
  --docs    print the old and new documentation text of changed elements
"""
import argparse
import html
import re
from pathlib import Path

from lxml import etree

XMI = '{http://www.omg.org/spec/XMI/20131001}'
TAGS = {'packagedElement', 'ownedLiteral', 'ownedAttribute', 'ownedDiagram', 'ownedEnd',
        'ownedOperation'}
KINDS = {'uml:Class', 'uml:Enumeration', 'uml:EnumerationLiteral', 'uml:Property',
         'uml:Diagram', 'uml:DataType', 'uml:PrimitiveType'}


def text(body):
    body = re.sub(r'<style.*?</style>', '', body or '', flags=re.S)
    body = re.sub(r'</?(i|b|u|em|strong|span|font)\b[^>]*>', '', body)
    return re.sub(r'\s+', ' ', html.unescape(re.sub(r'<[^>]+>', ' ', body))).strip()


def load(path):
    root = etree.parse(str(path), etree.XMLParser(huge_tree=True)).getroot()
    model = next(e for e in root if etree.QName(e).localname == 'Model')
    names = {e.get(XMI + 'id'): e.get('name') for e in model.iter() if e.get('name')}
    elements = {}

    def walk(elem, path):
        for child in elem:
            if not isinstance(child.tag, str):
                continue
            tag = etree.QName(child).localname
            name = child.get('name')
            kind = child.get(XMI + 'type', '')
            child_path = path
            if tag in TAGS and name:
                child_path = path + [name]
                if kind in KINDS:
                    own_id = child.get(XMI + 'id')
                    doc = next((c.get('body') for c in child.findall('ownedComment')
                                if any(a.get(XMI + 'idref') == own_id
                                       for a in c.findall('annotatedElement'))), '')
                    signature = ''
                    if kind == 'uml:Property':
                        signature = names.get(child.get('type'), child.get('type') or '')
                    elements['::'.join(child_path)] = (kind.split(':')[1], signature, text(doc))
            walk(child, child_path)

    walk(model, [])
    return elements


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument('--published', default='content/specifications/vec/v220/vec-2.2.0.mdxml')
    parser.add_argument('--dev', default='../vec/models/vec.mdxml')
    parser.add_argument('--filter', default='')
    parser.add_argument('--docs', action='store_true')
    args = parser.parse_args()

    old, new = load(Path(args.published)), load(Path(args.dev))
    keep = lambda n: args.filter.lower() in n.lower()
    added = sorted(n for n in new.keys() - old.keys() if keep(n))
    removed = sorted(n for n in old.keys() - new.keys() if keep(n))
    changed = sorted(n for n in old.keys() & new.keys() if keep(n) and old[n] != new[n])

    print(f'published: {args.published}\ndevelopment: {args.dev}\n')
    for title, items in (('Added', added), ('Removed', removed)):
        print(f'## {title} ({len(items)})')
        for n in items:
            kind, signature, _ = (new if title == 'Added' else old)[n]
            print(f'- {kind} {n}' + (f' : {signature}' if signature else ''))
        print()
    print(f'## Changed ({len(changed)})')
    for n in changed:
        what = [w for w, i in (('kind', 0), ('type', 1), ('documentation', 2)) if old[n][i] != new[n][i]]
        print(f'- {new[n][0]} {n} ({", ".join(what)})')
        if old[n][1] != new[n][1]:
            print(f'    type: {old[n][1]} -> {new[n][1]}')
        if args.docs and old[n][2] != new[n][2]:
            print(f'    old: {old[n][2]}\n    new: {new[n][2]}')


if __name__ == '__main__':
    main()
