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

# OpamFu trunk 7b4bc201bbbecb81dae75f7f8f70e2aed11c9708
# The trunk is required to prevent a bug running opam2web with missing dependencies.
WORKDIR /root
RUN git clone https://github.com/ocamllabs/opamfu.git
WORKDIR /root/opamfu
RUN git checkout 7b4bc201bbbecb81dae75f7f8f70e2aed11c9708
RUN eval `opam config env`; make build
RUN eval `opam config env`; make install

# Opam Coq repository
RUN opam repo add coq https://github.com/braibant/opam-coq-repo.git

# Bootstrap
RUN apt-get install -y npm
RUN npm install -g grunt-cli
RUN ln -s /usr/bin/nodejs /usr/bin/node
WORKDIR /root
RUN wget -qO- https://github.com/twbs/bootstrap/archive/v3.2.0.tar.gz |tar -xz
WORKDIR /root/bootstrap-3.2.0
RUN npm install
ADD bootstrap/bootswatch.less /root/bootstrap-3.2.0/less/
ADD bootstrap/variables.less /root/bootstrap-3.2.0/less/
RUN grunt dist

# Coq2Opam2Web
WORKDIR /root
RUN git clone https://github.com/clarus/coq2opam2web.git
RUN cp bootstrap-3.2.0/dist/css/bootstrap.min.css coq2opam2web/ext/css/
WORKDIR /root/coq2opam2web
RUN eval `opam config env`; make

# To allow "eval `opam config env`; make watch"
RUN apt-get install -y inotify-tools