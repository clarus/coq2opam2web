FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git
RUN apt-get install -y m4

# OCaml
RUN apt-get install -y ocaml camlp4-extra

# Opam
RUN apt-get install -y opam
RUN opam init

# Opam2Web dependencies with explicit and fixed versions
# Gawk is required by opam-lib
RUN apt-get install -y gawk
RUN opam install -y ocamlfind.1.5.3 typerex.1.99.6-beta ocp-build.1.99.6-beta
RUN opam install -y ocamlgraph.1.8.5 re.1.2.2 camlp4.4.01.0 cmdliner.0.9.5
RUN opam install -y extlib-compat.1.6.1 cudf.0.6.3 dose.3.1.2 opam-lib.1.1.1
RUN opam install -y ulex.1.1 omd.0.9.7 type_conv.111.13.00 stringext.1.0.0
RUN opam install -y menhir.20130912 ounit.2.0.0 xmlm.1.2.0 lwt.2.4.5
RUN opam install -y sexplib.111.25.00 dyntype.0.9.0 js_of_ocaml.2.4.1 uri.1.7.2
RUN opam install -y cow.0.8.1

# OpamFu trunk 7b4bc201bbbecb81dae75f7f8f70e2aed11c9708
# The trunk is required to prevent a bug running opam2web with missing dependencies.
WORKDIR /root
RUN git clone https://github.com/ocamllabs/opamfu.git
WORKDIR /root/opamfu
RUN git checkout 7b4bc201bbbecb81dae75f7f8f70e2aed11c9708
RUN eval `opam config env`; make build
RUN eval `opam config env`; make install

# Patched Bootstrap with our theme
RUN apt-get install -y npm
RUN npm install -g grunt-cli
RUN ln -s /usr/bin/nodejs /usr/bin/node
WORKDIR /root
RUN wget -qO- https://github.com/twbs/bootstrap/archive/v3.2.0.tar.gz |tar -xz
WORKDIR /root/bootstrap-3.2.0
RUN npm install
ADD bootstrap/ /root/bootstrap-3.2.0/less/
RUN grunt dist

# Opam Coq repository
RUN opam repo add coq https://github.com/coq/repo-stable.git

# Coq2Opam2Web
ADD . /root/coq2opam2web
WORKDIR /root/coq2opam2web
RUN cp /root/bootstrap-3.2.0/dist/css/bootstrap.min.css ext/css/
RUN cp /root/bootstrap-3.2.0/dist/js/bootstrap.min.js ext/js/
RUN eval `opam config env`; make

# Run a simple web server
EXPOSE 8000
WORKDIR /root/coq2opam2web/website
CMD python -m SimpleHTTPServer