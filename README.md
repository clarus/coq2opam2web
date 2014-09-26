# Coq2Opam2Web

Files to build the website for the Opam packages of Coq.

Run the `Dockerfile` with [Docker](http://www.docker.com/):

    docker build --tag=coq-eggs .

Launch the generated image:

    docker run -ti -p 8000:8000 coq-eggs

It will run a web server on (http://localhost:8000/) with the Coq Eggs website.
