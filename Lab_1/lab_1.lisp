#!/usr/bin/sbcl --script
(defvar a 10)
(defvar b 120)
(defvar c 10)
(defvar d 2)
;; X=(2A - B2)/(D(SinC - 4.5))
(defvar fs (- (* 2 a) (* b 2)))
(defvar ss (* d (- (sin c) (/ 9 2))))
(defvar as (/ fs ss))

(print as)