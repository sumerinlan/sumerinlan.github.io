#!/usr/bin/env bash
# Build the site into _site (or the folder given as $1).
# Runs Jekyll through Ruby so it works even where the `jekyll` binstub
# is missing, and forces UTF-8 so Sass can read the non-ASCII comments.
set -euo pipefail
cd "$(dirname "$0")/.."
export LANG=C.UTF-8 LC_ALL=C.UTF-8 RUBYOPT=-EUTF-8
bundle exec ruby -e 'load Gem.bin_path("jekyll", "jekyll")' -- build -d "${1:-_site}"
