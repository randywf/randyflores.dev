JEKYLL := bundle exec jekyll
SRC := docs

.PHONY: dev build clean install doctor

install:
	bundle install

dev:
	$(JEKYLL) serve --source $(SRC) --livereload --incremental --drafts

build:
	$(JEKYLL) build --source $(SRC)

clean:
	$(JEKYLL) clean --source $(SRC)

doctor:
	$(JEKYLL) doctor --source $(SRC)

post:
	@if [ -z "$(title)" ]; then echo 'usage: make post title="My Title"'; exit 1; fi
	bundle exec jekyll post "$(title)" --source docs

draft:
	@if [ -z "$(title)" ]; then echo 'usage: make draft title="My Title"'; exit 1; fi
	bundle exec jekyll draft "$(title)" --source docs

publish:
	@if [ -z "$(path)" ]; then echo 'usage: make publish path=docs/_drafts/my-title.md'; exit 1; fi
	bundle exec jekyll publish "$(path)" --source docs