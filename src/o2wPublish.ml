(** Documentation about how to publish a new package. *)

let to_html =
  <:html<
    <div class="row">
      <div class="col-md-12">
        <h1>Publish</h1>
        <p>The repository of Coq uses <a href="http://opam.ocamlpro.com/">OPAM</a>, the package manager for OCaml. To upload a new Coq package, you must do a pull-request on the <a href="https://github.com/coq/repo-stable">repository</a>.</p>

        <h2>Making a pull-request</h2>
        <p>Send a pull-request with your package on the <a href="https://github.com/coq/opam-coq-repo">Coq repository</a>. You need to know how to deal with <a href="http://opam.ocamlpro.com/">OPAM</a> packages and <a href="https://github.com/">GitHub</a>. For more information you can read:</p>
        <ul>
          <li><a href="https://help.github.com/articles/using-pull-requests">using pull-requests</a></li>
          <li><a href="http://opam.ocaml.org/doc/Packaging.html">create an OPAM package</a></li>
        </ul>
        <p>The naming scheme for packages is <code>coq-package-name.MAJOR.MINOR.PATCH</code>. All names are prefixed by <code>coq-</code>. Names are in small caps, plus dashes or digits. The version number must contain exactly three numbers. We try to follow the <a href="http://semver.org/">SemVer</a> convention. For the dependencies, be cautious that new versions may not be backward compatible. This is especially true for Coq itself, so prefer to use rather precise version numbers for it.</p>
        <p>Only fixed releases are accepted (no development version). The should use the <a href="https://github.com/coq/repo-testing">testing repository</a> and <a href="https://github.com/coq/repo-unstable">unstable repository</a> for release candidates and development versions.</p>

        <!-- TODO
        <h2>Workflow example</h2>
        <p>We will create and publish a test project using OPAM.</p>-->
      </div>
    </div>
  >>