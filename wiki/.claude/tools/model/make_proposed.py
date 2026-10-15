"""Write <out-dir>/<name>.proposed.html files in the MagicDraw HTML format.

Usage: make_proposed.py <spec.py> <out-dir>

<spec.py> defines PROPOSED = {'<name>': ['<paragraph html>', ...], ...}.
"""
import runpy
import sys
from pathlib import Path

HEAD = ('<html>\n  <head>\n\t\t<style>\n\t\t\tp {padding:0px; margin:0px;}\n\t\t</style>\n'
        '\t</head>\n  <body>\n')
TAIL = '</body>\n</html>\n'


def main(spec, out_dir):
    proposed = runpy.run_path(spec)['PROPOSED']
    for name, paragraphs in proposed.items():
        body = ''.join(f'    <p>\n{p}\n    </p>\n\n' for p in paragraphs)
        head, tail = HEAD, TAIL
        current = Path(out_dir) / f'{name}.current.html'
        text = current.read_text(encoding='utf-8') if current.exists() else ''
        if '<body><p>' in text:
            # compact format without line breaks
            head, tail = text[:text.index('<body>') + len('<body>')], '</body></html>\n'
            body = ''.join(f'<p>{p}</p>' for p in paragraphs)
        elif text:
            # reuse the frame of the current documentation to keep the diff minimal
            if '<body>' in text and '</body>' in text:
                head = text[:text.index('<body>') + len('<body>\n')]
                tail = text[text.rindex('\n', 0, text.rindex('</body>')) + 1:]
        target = Path(out_dir) / f'{name}.proposed.html'
        target.write_text(head + body + tail, encoding='utf-8')
        print(target)


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
