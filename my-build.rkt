#!/usr/bin/env racket
#lang racket/base
(require scribble/render
         scribble/html-render
         file/zip
	 scribble/html-properties
         "intro/langs/en-us/course-main.scrbl")

(render (list doc)
        (list "index")
        #:render-mixin (compose render-multi-mixin render-mixin)
        #:dest-dir "distribution"
	#:style-extra-files (list "intro/langs/en-us/my-style.css"))
