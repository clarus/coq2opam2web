all:
	opam2web --output website/ local:coq

watch:
	while git ls-tree --name-only -r HEAD |inotifywait --fromfile -; do make; done