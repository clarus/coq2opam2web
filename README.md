# Coq2Opam2Web

Files to build the website for the Opam packages of Coq.

Run the `Dockerfile` with [Docker](http://www.docker.com/):

    docker build --tag=coq2opam2web .

Launch the generated image:

    docker run -ti -p 8000:8000 coq2opam2web

It will run a web server on [localhost:8000](http://localhost:8000/) with the Coq Eggs website.
