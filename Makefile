.PHONY: all watch build-tool build-website clean

all: build-tool build-website

watch:
	while git ls-tree --name-only -r HEAD |inotifywait --fromfile -; do make; done

build-tool:
	cd src && $(MAKE)

build-website:
	src/_build/opam2web.native --output website/ local:coq
	cp -Rf ext website/
	cp -f src/search.js website/ext/js/
	chmod -R a+r website

install:
	cd src && $(MAKE) install

clean:
	cd src && $(MAKE) clean
	rm -Rf website