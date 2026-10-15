"""Compare the documentation in the model with the proposed texts of a work package.

Usage: check_doc.py <model.mdxml> <wp-dir>

Compares the paragraphs of each <wp-dir>/<name>.proposed.html with the documentation of the
element in the model, ignoring whitespace and HTML entity differences.
"""
import html
import json
import re
import subprocess
import sys
import tempfile
from pathlib import Path


def paragraphs(text):
    body = text.split('<body>')[1].split('</body>')[0] if '<body>' in text else text
    return [re.sub(r'\s+', ' ', html.unescape(p).replace('\xa0', ' ')).strip()
            for p in re.findall(r'<p>(.*?)</p>', body, re.S) if p.strip()]


def main(model, wp_dir):
    wp = Path(wp_dir)
    names = sorted(f.name[:-len('.proposed.html')] for f in wp.glob('*.proposed.html'))
    index_file = wp / 'qnames.json'
    index = json.loads(index_file.read_text()) if index_file.exists() else {}
    with tempfile.TemporaryDirectory() as tmp:
        subprocess.run([sys.executable, str(Path(__file__).with_name('extract_doc.py')), model, tmp,
                        *(index.get(n, n.replace('.', '::')) for n in names)], check=True, stdout=subprocess.DEVNULL)
        status = 0
        for name in names:
            model_text = paragraphs((Path(tmp) / f'{name}.current.html').read_text(encoding='utf-8'))
            proposed = paragraphs((wp / f'{name}.proposed.html').read_text(encoding='utf-8'))
            if model_text == proposed:
                print('OK  ', name)
                continue
            status = 1
            print('DIFF', name)
            for i in range(max(len(model_text), len(proposed))):
                a = model_text[i] if i < len(model_text) else None
                b = proposed[i] if i < len(proposed) else None
                if a != b:
                    print('  model   :', a)
                    print('  proposed:', b)
    return status


if __name__ == '__main__':
    sys.exit(main(sys.argv[1], sys.argv[2]))
