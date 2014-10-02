(** The about page. *)
let to_html =
  <:html<
    <div class="row">
      <div class="col-md-1">
      </div>
      <div class="col-md-10">
        <h1>About</h1>
        <p><a href="/">Coq Eggs</a> is the package repository for the <a href="http://coq.inria.fr/">Coq</a> proof system. It simplifies collaborative development of large proofs and safe programs. The packages are managed by <a href="http://opam.ocamlpro.com/">OPAM</a>, the state-of-the-art package manager for <a href="http://ocaml.org/">OCaml</a>.</p>
        <p>For any request, please write at <a href="mailto:(λx.x@eggs.org)contact">(λx.x@eggs.org) contact</a>.</p>

        <h3>Contributors</h3>
        <ul>
          <li>first contributor</li>
          <li>second contributor</li>
          <li>third contributor</li>
        </ul>
      </div>
      <div class="col-md-1">
      </div>
    </div>
  >>