FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y gcc make m4 git

# OCaml
RUN apt-get install -y ocaml camlp4-extra

# Opam
RUN apt-get install -y opam
RUN opam init

# Opam2Web dependencies (gawk is required for opam-lib)
RUN apt-get install -y gawk
RUN opam install -y opam-lib
RUN opam install -y js_of_ocaml uri cow.0.8.1

# OpamFu trunk
WORKDIR /root
RUN git clone https://github.com/ocamllabs/opamfu.git
WORKDIR /root/opamfu
RUN eval `opam config env`; make build
RUN eval `opam config env`; make install

# Opam2Web 1.3
WORKDIR /root
RUN git clone https://github.com/ocaml/opam2web.git
WORKDIR /root/opam2web
RUN git checkout 1.3
RUN eval `opam config env`; make
RUN eval `opam config env`; make install

# Add the Opam Coq repository
RUN opam repo add coq https://github.com/braibant/opam-coq-repo.git

# Coq2Opam2Web
WORKDIR /root
RUN git clone https://github.com/clarus/coq2opam2web.git
WORKDIR /root/coq2opam2web
RUN eval `opam config env`; opam2web --output website/ local:coq