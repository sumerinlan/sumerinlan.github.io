#!/usr/bin/env bash
# Checks to run before a commit: build, spelling, internal links and image
# paths, Chinese URLs that do not mirror the English ones, and Chinese
# translations that are behind their English post.
set -euo pipefail
cd "$(dirname "$0")/.."

scripts/build.sh _site > /dev/null
echo "build: ok"

# Two pages with one URL (e.g. two posts with the same name in one section):
# a build overwrites one without a word, so ask `jekyll doctor`. It reports
# conflicts first, then stops on the site having no `url`, which is fine here.
doctor_log=$(LANG=C.UTF-8 LC_ALL=C.UTF-8 RUBYOPT=-EUTF-8 \
    bundle exec ruby -e 'load Gem.bin_path("jekyll", "jekyll")' -- doctor 2>&1 || true)
if grep -q "Conflict:" <<< "$doctor_log"; then
    grep "Conflict:" <<< "$doctor_log" | sed 's/\x1b\[[0-9;]*m//g'
    echo "urls: two pages share a URL"
    exit 1
fi
echo "urls: ok"

if command -v codespell > /dev/null; then
    # RIN is a database column name in the Food Quest post
    codespell --ignore-words-list rin _posts _zh _data _includes index.html about projects experience zh
    echo "spelling: ok"
else
    echo "spelling: skipped (pip install codespell)"
fi

python3 - _site <<'PY'
import os, re, sys, urllib.parse
root = sys.argv[1]
broken = []
for folder, _, files in os.walk(root):
    for name in files:
        if not name.endswith(".html"):
            continue
        path = os.path.join(folder, name)
        html = open(path, encoding="utf-8").read()
        ids = set(re.findall(r'id="([^"]+)"', html))
        for target, fragment in re.findall(r'(?:href|src)="([^"#:]*)(#[^"]*)?"', html):
            if target == "":
                if fragment[1:] and fragment[1:] not in ids:
                    broken.append((path, fragment))
                continue
            if not target.startswith("/") or target.startswith("//"):
                continue
            file = root + urllib.parse.unquote(target)
            if not any(os.path.isfile(f) for f in (file, file + ".html", file + "/index.html")):
                broken.append((path, target))
for page, link in broken:
    print(f"broken link: {link} in {page}")
print("links: ok" if not broken else f"links: {len(broken)} broken")
sys.exit(1 if broken else 0)
PY

# A page in both languages has its Chinese URL at /zh plus its English URL
# (read from the hreflang links in each built English page).
python3 - _site <<'PY'
import os, re, sys
root = sys.argv[1]
wrong = []
for folder, _, files in os.walk(root):
    for name in files:
        if not name.endswith(".html"):
            continue
        html = open(os.path.join(folder, name), encoding="utf-8").read()
        en = re.search(r'<link rel="alternate" hreflang="en" href="([^"]*)"', html)
        zh = re.search(r'<link rel="alternate" hreflang="zh" href="([^"]*)"', html)
        if not en or not zh or not html.lstrip().startswith('<!DOCTYPE html>\n<html lang="en"'):
            continue
        expected = "/zh" + en.group(1)
        if zh.group(1) != expected:
            wrong.append(f"{en.group(1)} has its Chinese page at {zh.group(1)}; move it so its URL is {expected}")
for line in wrong:
    print(f"zh url: {line}")
print("zh urls: ok" if not wrong else f"zh urls: {len(wrong)} wrong")
sys.exit(1 if wrong else 0)
PY

# Each translation in _zh records source_hash: the first 8 hex digits of the
# SHA-256 of its source post's body (the text after the front matter). When
# the English body changes, the hash no longer matches.
python3 - <<'PY'
import glob, hashlib, os, re, sys
stale = []
for path in sorted(glob.glob("_zh/*.md")):
    front = open(path, encoding="utf-8").read().split("---\n", 2)[1]
    source = re.search(r"^source:\s*(\S+)", front, re.M)
    recorded = re.search(r"^source_hash:\s*(\S+)", front, re.M)
    post = f"_posts/{source.group(1)}.md" if source else None
    if not post or not os.path.isfile(post):
        stale.append(f"{path}: source post not found")
        continue
    body = open(post, encoding="utf-8").read().split("---\n", 2)[2]
    current = hashlib.sha256(body.encode("utf-8")).hexdigest()[:8]
    if not recorded or recorded.group(1) != current:
        stale.append(f"{path}: {post} changed; update the Chinese, then set source_hash: {current}")
for line in stale:
    print(f"translation: {line}")
print("translations: ok" if not stale else f"translations: {len(stale)} behind")
sys.exit(1 if stale else 0)
PY
