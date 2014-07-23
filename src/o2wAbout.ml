(** The about page. *)
let to_html =
  <:html<
    <h1>About</h1>
    <p><strong>Coq Eggs</strong> is the package repository for the <a href="http://coq.inria.fr/">Coq</a> proof system. It simplifies collaborative development of large proofs and safe pograms. The packages are managed by <a href="http://opam.ocamlpro.com/">OPAM</a>, the state-of-the-art package manager for <a href="http://ocaml.org/">OCaml</a>.</p>
    <p>For any request, please write at <a href="mailto:(λx.x@eggs.org)contact">(λx.x@eggs.org) contact</a>.</p>

    <h3>Contributors</h3>
    <ul>
      <li><a href="http://braibant.github.io/">Thomas Braibant</a></li>
      <li><a href="http://guillaume.claret.me/">Guillaume Claret</a></li>
      <li><a href="http://www.msr-inria.fr/researchers/cyril-cohen/">Cyril Cohen</a></li>
    </ul>
  >>