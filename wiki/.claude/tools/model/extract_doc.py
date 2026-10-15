"""Extract the documentation (HTML comment body) of model elements from the MagicDraw model.

Usage: extract_doc.py <model.mdxml> <out-dir> <qualified-name>...

A qualified name is matched against the end of the element's path of names, separated by
'::' (e.g. 'DocumentType', 'DocumentType::HarnessDescription',
'PartStructureSpecification::content', 'Composite Part Descriptions::Instantiation Approaches').
The documentation of each element is written to <out-dir>/<qualified-name>.current.html.
"""
import json
import sys
from pathlib import Path
from lxml import etree

XMI = '{http://www.omg.org/spec/XMI/20131001}'
TAGS = {'packagedElement', 'ownedLiteral', 'ownedAttribute', 'ownedDiagram', 'ownedEnd',
        'ownedOperation'}


def main(model, out_dir, names):
    root = etree.parse(model, etree.XMLParser(huge_tree=True)).getroot()
    uml_model = next(e for e in root if etree.QName(e).localname == 'Model')
    elements = []

    def walk(elem, path):
        for child in elem:
            if not isinstance(child.tag, str):
                continue
            tag = etree.QName(child).localname
            name = child.get('name')
            child_path = path + [name] if tag in TAGS and name else path
            if tag in TAGS and name:
                elements.append((child_path, child))
            walk(child, child_path)

    walk(uml_model, [])
    out = Path(out_dir)
    out.mkdir(parents=True, exist_ok=True)
    status = 0
    index_file = out / 'qnames.json'
    index = json.loads(index_file.read_text()) if index_file.exists() else {}
    for qname in names:
        parts = qname.split('::')
        hits = [(p, e) for p, e in elements if p[-len(parts):] == parts]
        if len(hits) != 1:
            print(f'{qname}: {len(hits)} matches', *('::'.join(p) for p, _ in hits), sep='\n  ')
            status = 1
            continue
        path, elem = hits[0]
        own_id = elem.get(XMI + 'id')
        bodies = [c.get('body') for c in elem.findall('ownedComment')
                  if any(a.get(XMI + 'idref') == own_id for a in c.findall('annotatedElement'))]
        body = bodies[0] if bodies else ''
        file_name = qname.replace('::', '.').replace(' ', '-')
        index[file_name] = qname
        target = out / f'{file_name}.current.html'
        target.write_text(body, encoding='utf-8')
        print(f'{"::".join(path)} -> {target}')
    index_file.write_text(json.dumps(index, indent=2, sort_keys=True) + '\n')
    return status


if __name__ == '__main__':
    sys.exit(main(sys.argv[1], sys.argv[2], sys.argv[3:]))
