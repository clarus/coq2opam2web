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
# The trunk is required to prevent a bug running opam2web with missing dependencies.
WORKDIR /root
RUN git clone https://github.com/ocamllabs/opamfu.git
WORKDIR /root/opamfu
RUN eval `opam config env`; make build
RUN eval `opam config env`; make install

# Opam Coq repository
RUN opam repo add coq https://github.com/braibant/opam-coq-repo.git

# Coq2Opam2Web
RUN apt-get install -y inotify-tools
WORKDIR /root
RUN git clone https://github.com/clarus/coq2opam2web.git
WORKDIR /root/coq2opam2web
RUN eval `opam config env`; make