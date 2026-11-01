# Suyie's portfolio site

Jekyll site served by GitHub Pages (`github-pages` gem, Jekyll 3.10). Visual rules come from Suyie's personal design system; follow its README for colors, type, tone and naming instead of inventing new styles.

## Build and check

- `scripts/build.sh` builds into `_site`. Use it instead of `bundle exec jekyll`, which can fail here (missing binstub, non-UTF-8 locale).
- `scripts/check.sh` builds, runs `codespell`, and checks internal links and `#anchors`. Run it before every commit.
- `node scripts/screenshot.js <out-dir> [page ...]` takes light, dark and phone screenshots of the main pages. Show them to Suyie before pushing a visual change.

## Content

- Work content uses only what Snowflake's public docs describe. No Private Preview features, internal tools, team processes or people's names.
- Do not claim more than Suyie did. Use "built", "owned" or "led" only where her notes support it; team launches are "worked on", not "shipped".
- English copy is plain: short sentences, no metaphors, no exclamation marks. Personal pages tell a story in time order; work pages stay concise.
- Use the full name Suyie Zhi on this site.

## Front matter

- Work and internship posts: `date` is the start; `end_date` is a date or `present`; `periods` (a list of `{ start, end }`) replaces both (e.g. two separate internships). Rendered by `_includes/date-range.html`.
- Projects: `group` picks the section on the Projects page (ids in `_data/project_groups.yml`; `archive: true` on a group or a single project folds it under "Earlier projects"). `cover` adds a card image, cropped to 16:9.
- `shipped` and `shipped_themes` on a work post draw the "Launches I worked on" timeline (`_includes/shipped.html`). A launch goes in the year the project ended, unless its largest milestone finished earlier. Themes match the page's sections, one color each (`cat-1`, `cat-2`, ...).
- Category icons live in `_data/icons.yml`; icons are Tabler outline symbols in `assets/icons.svg`.

## Chinese version

The home, About, Work Experience and Projects pages have a Chinese copy under `/zh/`. A post has a Chinese copy only when `_zh` holds a translation of it (now: Snowflake); Chinese lists link to the translation when there is one, else to the English post.

- Page bodies live in `_includes/pages/`; `index.html`, `about/index.html`, `experience/index.html`, `projects/index.html` and their `zh/` copies hold only front matter. Each pair shares a `ref`; Chinese pages set `lang: zh` (English comes from `defaults` in `_config.yml`). The header links are the refs listed in `_data/nav.yml`.
- Interface text, date formats, timeline types, category names and roles: `_data/i18n.yml`, read through `site.data.i18n[page.lang]`. A role not listed whole is split at ", " when every part is listed.
- Chinese copy sits next to the English it translates:
  - post card text: `excerpt_zh` next to `excerpt`
  - `_data/bio.yml`: `header_zh`, `text_zh`
  - `_data/project_groups.yml`: `name_zh`
  - `_config.yml`: `headline_zh`, `description_zh`
  - `_includes/bio.md`: both paragraphs in one file
  - page titles and `heading_content`: front matter of each `zh/` page
  - `shipped_themes`: `name_zh` on a theme whose name is not a product name
- Post translations: in `_zh` at the English URL's path, e.g. `_zh/experience/snowflake.md` for `/experience/snowflake`. Front matter is only `source` (the post id, e.g. `work/2021-05-03-snowflake`) and `source_hash`; the body is the Chinese text, with the same `{#id}` heading anchors and the same image paths as the English. Title, dates, role, tags, cover and launches come from `source` (`_includes/entry.html`).
- Dates, titles, tags, locations and the launch timeline are shared; never write them twice.
- When English text changes, change its Chinese field in the same commit. A new project or internship on a list needs `excerpt_zh`; a new role, category or timeline type needs an entry in `_data/i18n.yml`.
- `scripts/check.sh` fails when a translated post's English body changed after the translation: update the Chinese, then set `source_hash` to the value it prints.
- Chinese copy: short, plain sentences in the words Chinese speakers actually use (斯坦福大学, 前端开发). Product, team and technical names stay English (Snowflake, Horizon Catalog). One space between Chinese and English or numbers (`2021 年 5 月`).
- Language never interrupts reading: switching or redirecting only ever moves to the same page in the other language, never to a different page.
- Language (`_includes/head.html`): a page in both languages opens in the reader's language: the choice saved by the header's language icon (`localStorage` `lang`), else a browser set to Chinese; it records itself as the tab's language (`sessionStorage` `lang`). A page in one language never moves and shows the icon faded; its header links lead to the saved, tab or browser language, so a detour through it keeps the reader's language.
- Search: `search.json` and `zh/search.json` both render `_includes/search-index.json` in their own language.

## Git

- Commit straight to `main`; no feature branches.
- Changes from the same day go into one commit (amend, then `git push --force-with-lease`).
- Never commit or push until Suyie has seen the change and said yes.
- Commit messages and PR descriptions never include Claude session links (`Claude-Session: https://claude.ai/...`); this repo is public.
