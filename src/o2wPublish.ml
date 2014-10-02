(** Documentation about how to publish a new package. *)

let to_html =
  <:html<
    <div class="row">
      <div class="col-md-1">
      </div>
      <div class="col-md-10">
        <h1>Publish</h1>
        <p>The repository of <a href="/">Coq Eggs</a> uses <a href="http://opam.ocamlpro.com/">OPAM</a>, the package manager for OCaml. To upload a new Coq package you have two ways:</p>
        <ul>
          <li>send an email to <a href="mailto:(λx.x@eggs.org)publish">(λx.x@eggs.org) publish</a></li>
          <li>make a pull-request on the <a href="https://github.com/coq/opam-coq-repo">repository</a> (advanced users)</li>
        </ul>

        <h2>Sending an email</h2>
        <p>The simplest way is to send an email to <a href="mailto:(λx.x@eggs.org)publish">(λx.x@eggs.org) publish</a> to publish a new package. You should give it a name, a version number and include the packages sources. Please precise any additional information you consider relevant (like the dependencies or the build process).</p>

        <h2>Making a pull-request</h2>
        <p>If you know how to deal with <a href="http://opam.ocamlpro.com/">OPAM</a> packages, you can also send a pull-request with your package on the Coq Eggs <a href="https://github.com/coq/opam-coq-repo">repository</a>. For more informations you can read:</p>
        <ul>
          <li><a href="https://help.github.com/articles/using-pull-requests">using pull-requests</a> on GitHub</li>
          <li><a href="http://opam.ocaml.org/doc/Packaging.html">create an OPAM package</a></li>
        </ul>
        <p>The naming scheme for packages is <code>coq-package-name.MAJOR.MINOR.PATCH</code>. All names are prefixed by <code>coq-</code>. Names are in small caps, plus dashes or digits. The version number must contain exactly three numbers, and we try to follow the <a href="http://semver.org/">SemVer</a> convention.</p>
        <p>Only fixed releases are accepted (no development version). For your dependencies, be cautious that new versions may not be backward compatible. This is especially true for Coq itself, so prefer to use precise version numbers for it.</p>
      </div>
      <div class="col-md-1">
      </div>
    </div>
  >>