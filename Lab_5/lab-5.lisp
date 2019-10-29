#!/usr/bin/sbcl --script

(defun read-file (x)
    (with-open-file (in "/media/john/Новый том/Education/Institution/4K_1 Сем/функциоанальное-програмирования/Lab_5/mytext.txt")
    (loop for line = (read-line in nil nil)
        while line
        collect line)
    )
)
(defvar line ( read-file " "))
(loop for l in line do
    (print (string-capitalize l :start 0 :end 1))
)
(terpri)