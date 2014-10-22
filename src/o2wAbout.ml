(** The about page. *)
let to_html =
  <:html<
    <div class="row">
      <div class="col-md-12">
        <h1>About</h1>
        <p><a href="/">Coq Eggs</a> is the package repository for the <a href="http://coq.inria.fr/">Coq</a> proof system. It simplifies collaborative development of large proofs and safe programs. The packages are managed by <a href="http://opam.ocamlpro.com/">OPAM</a>, the state-of-the-art package manager for <a href="http://ocaml.org/">OCaml</a>.</p>
        <p>This website was adapated from <a href="http://opam.ocaml.org/">opam.ocaml.org</a> by Guillaume Claret. For any request, please write at <a href="mailto:(λx.x@clarus.me)dev">(λx.x@clarus.me) dev</a>.</p>
      </div>
    </div>
  >>