.PHONY: all watch build-tool build-website clean

all: build-tool build-website

watch:
	while git ls-tree --name-only -r HEAD |inotifywait --fromfile -; do make; done

build-tool:
	cd src && $(MAKE)

build-website:
	src/_build/opam2web.native --output website/ local:coq

install:
	cd src && $(MAKE) install

clean:
	cd src && $(MAKE) clean