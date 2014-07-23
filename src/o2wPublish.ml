(** Documentation about how to publish a new package. *)

let to_html =
  <:html<
    <h1>Publish</h1>
    <p>Send an email to <a href="mailto:(λx.x@eggs.org)publish">(λx.x@eggs.org) publish</a> to publish a new package. You should give it a name, a version number and include the packages sources. Please precise any additional information you consider relevant (like dependencies or build process).</p>
    <p>If you know how to deal with <a href="http://opam.ocamlpro.com/">OPAM</a> packages, you can also send a pull-request with your package on the <a href="https://github.com/braibant/opam-coq-repo">Coq Eggs repository</a>.</p>
  >>