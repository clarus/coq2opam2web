FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc make m4 git

RUN apt-get install -y camlp4-extra opam
RUN opam init

RUN apt-get install -y gawk
RUN opam install -y opam2web

# # Replace the official repository by a fork to install opam-lib
# RUN opam repo add pw374 https://github.com/pw374/opam-repository.git
# RUN opam repo remove default
# RUN opam update

# Opam2Web trunk
# WORKDIR /root
# RUN git clone https://github.com/ocaml/opam2web.git
# WORKDIR /root/opam2web
# # Gawk is required to install opam-lib
# RUN apt-get install -y gawk
# RUN opam install -y re uri opam-lib opamfu cow cmdliner js_of_ocaml
# RUN eval `opam config env`; make