.PHONY: all watch tool website clean

all: tool website

watch:
	while git ls-tree --name-only -r HEAD |inotifywait --fromfile -; do make; done

tool:
	cd src && $(MAKE)

website:
	src/_build/opam2web.native --output website/ local:coq
	cp -Rf ext website/
	cp -f src/search.js website/ext/js/
	find website -name "*.html" |xargs sed -i 's/<html lang="en" xmlns:t="http:\/\/ocaml.org\/xmlns\/template#">/<!DOCTYPE html>\n<html lang="en">/'
	chmod -R a+r website

install:
	cd src && $(MAKE) install

clean:
	cd src && $(MAKE) clean
	rm -Rf website