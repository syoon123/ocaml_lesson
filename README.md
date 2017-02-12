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
Add this to your emacs init file:
```
;; Add the opam lisp dir to the emacs load path
(add-to-list
 'load-path
 (replace-regexp-in-string
  "\n" "/share/emacs/site-lisp"
  (shell-command-to-string "opam config var prefix")))

;; Automatically load utop.el
(autoload 'utop "utop" "Toplevel for OCaml" t)

;; Use the opam installed utop
(setq utop-command "opam config exec -- utop -emacs")
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line

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
