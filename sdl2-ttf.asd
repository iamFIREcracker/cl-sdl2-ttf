(defpackage :sdl2-ttf.asdf
  (:use #:cl #:asdf))

(in-package :sdl2-ttf.asdf)

(defsystem :sdl2-ttf
    :description "Bindings for sdl2_ttf using autowrap"
    :author "Bryan Baraoidan"
    :license "MIT"
    :version "1.0"
    :depends-on (:alexandria :defpackage-plus :cl-autowrap :sdl2 :cffi-libffi :trivial-garbage)
    :pathname "src"
    :serial t
    :components ((:file "package")
                 (:file "library")
                 (:file "autowrap")
                 (:file "helpers")
                 (:file "conditions")
                 (:file "render")
                 (:file "size")
                 (:file "general")
                 (:file "style")
                 (:module autowrap-spec
                          :pathname "spec"
                          :components ((:static-file "SDL2_ttf.h")))))
