FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc make m4 git

RUN apt-get install -y camlp4-extra opam
RUN opam init

RUN apt-get install -y gawk
RUN opam install -y opam2web

WORKDIR /root
RUN git clone https://github.com/clarus/coq2opam2web.git
WORKDIR /root/coq2opam2web