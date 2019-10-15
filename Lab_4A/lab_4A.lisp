#!/usr/bin/sbcl --script

(defun summator (x G a)
    (format t "input: ~D ~A ~D"  x G a )

    (let ((l '()))
        (loop for var in x
            do 
            (case G 
                ((#\+) (setq l (cons (+ var a) l)))
                ((#\-) (setq l (cons (- var a) l)))
                ((#\/) (setq l (cons (/ var a) l)))
                ((#\*) (setq l (cons (* var a) l)))
            )
        )
        l
    ) 
)
(print (summator  '(642 123 32 1) #\+ 4))
(terpri)
(terpri)
(print (summator  '(642 123 32 1) #\- 4))
(terpri)
(terpri)
(print (summator  '(642 123 32 1) #\/ 4))
(terpri)
(terpri)
(print (summator  '(642 123 32 1) #\* 4))
(terpri)
(terpri)

