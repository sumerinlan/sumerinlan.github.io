source "https://rubygems.org"

# The same Jekyll, theme and plugin versions GitHub Pages uses to build the
# live site, so a local build matches it. Run locally with:
#
#     bundle exec jekyll serve
#
gem "github-pages", group: :jekyll_plugins

# Ruby 3 no longer ships webrick, which `jekyll serve` needs
gem "webrick"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0" if Gem.win_platform?
