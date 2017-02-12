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

## Getting started

Write your code in a file with the extension ".ml".

To use utop, simply run:
```
$ utop
```

To read, compile and execute source phrases from the given file, run:
```
#use "<file_name>.ml";;
```

## Some helpful links
* [Core Documentation](https://ocaml.janestreet.com/ocaml-core/latest/doc/core_kernel/)
* [OCaml Language Cheat Sheet](http://www.ocamlpro.com/files/ocaml-lang.pdf)
* [OCaml Standard Library Cheat Sheet](http://www.ocamlpro.com/files/ocaml-stdlib.pdf)
