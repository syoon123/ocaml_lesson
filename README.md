# An Introduction to OCaml

## Installation Instructions

### Step 1. Install opam
Installation instructions for OS X and Ubuntu are included [here](http://opam.ocaml.org/doc/Install.html).

### Step 2. ... the rest.

```
$ opam install core utop
$ opam install tuareg
$ opam user-setup install
```
Make sure your ~/.ocamlinit file has the following lines:
```
#use "topfind";;
#thread;;
#camlp4o;;
#require "core.top"
#require "core.syntax";;

open Core.Std
```

