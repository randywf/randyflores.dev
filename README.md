# randyflores.dev

Personal site built with Jekyll (GitHub Pages-compatible) with site source living under `docs/`.

## Project structure
- `docs/`: Jekyll site source (pages, layouts, assets)
- `docs/_posts/`: blog posts (create if missing)
- `docs/_drafts/`: draft posts (create if missing)
- `Makefile`: convenience commands for local dev + post workflow
- `Gemfile`: uses `github-pages` to match the GitHub Pages Jekyll environment

## Prerequisites
- Ruby + Bundler (`bundle`)
- `make`

## Local development
Install dependencies:

```bash
make install
```

Run the dev server (live reload + drafts):

```bash
make dev
```

Other useful commands:

```bash
make build
make clean
make doctor
```

## Blog posts (jekyll-compose)
This repo uses `jekyll-compose` (invoked via `bundle exec jekyll ...`) and wraps common actions in `Makefile` targets.

If you don’t already have them, create these folders so Jekyll/compose can write files into them:

```bash
mkdir -p docs/_posts docs/_drafts
```

Create a draft:

```bash
make draft title="My Custom Title"
```

Create a post:

```bash
make post title="My Custom Title"
```

Publish a draft (move it into posts):

```bash
make publish path=docs/_drafts/my-custom-title.md
```

## Deployment (GitHub Pages)
- Dependencies are pinned via `gem "github-pages"` for compatibility.
- If you publish with GitHub Pages, configure the Pages source to **deploy from the repository’s `/docs` folder**.