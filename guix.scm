;; this compiles and loads, lets go
(define-module (nongnu packages linux)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages linux)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system copy)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system linux-module)
  #:use-module (guix build-system trivial)
  #:use-module (ice-9 match)
  #:use-module (nonguix licenses))



(use-modules (guix packages)
	     ((guix licenses) #:prefix license:)
             (guix build-system linux-module))

(let ((commit "08095b0d0c81a7737f9fa339bd1eee340e3a150e"))
  (package
   (name "module-test")
   (version "0.0.0")
   (source (origin
	    (method git-fetch)
	    (uri (git-reference
		  (url "https://github.com/NukeTheDamnWhales/module-test/")
		  (commit commit)))
	    (sha256
	     (base32
	      "17cmshwpxp0xw1v1ans2g9m0fpb3ybc30rdw90mrbnp15dbsm2rw"))))
   (build-system linux-module-build-system)
   (arguments `(#:tests? #f))
   (home-page "")
   (synopsis "")
   (description "")
   (license license:gpl3+)))
