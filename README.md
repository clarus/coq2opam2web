# Coq2Opam2Web

Files to build the website for the Opam packages of Coq.

Run the `Dockerfile` with [Docker](http://www.docker.com/):

    docker build .

Connect to the generated image and run:

    opam2web --output website/ local:coq

The website will be in `website/`.