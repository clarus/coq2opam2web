# Coq2Opam2Web

Files to build the website for the Opam packages of Coq.

Run the `Dockerfile` with [Docker](http://www.docker.com/):

    docker build .

Connect to the generated image and run:

    make

The website will be in `website/`. In development mode, if you want to rebuild the website as files are modified, run:

    make watch