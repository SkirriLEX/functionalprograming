#!/usr/bin/sbcl --script

(defun reversator (x)           
    (format t "input : ~D"  x)
    (terpri) 
        (cond ((null x) '())  
            (t (append (reversator (cdr x)) (list (car x))))
        )
)

(defun outputer (q)
    (format t "output: ~A  ~D" q (last q))
    (terpri)
    (terpri)
)

(outputer (reversator '(642 123 32 1)))

(outputer  (reversator  '(5312 12 1da aw)))

(outputer  (reversator  '(35ryg awkjfb 234 2 234)))

(outputer  (reversator '(l nkbae awdf erg3 fsef)))

(outputer  (reversator '()))