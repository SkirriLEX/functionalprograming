#!/usr/bin/sbcl --script

(defun tan-cf (xf kf)
    ((lambda (x k d) (/ x (- d (fn x k d)))) xf kf 1)
)
(defun fn (x k df)
    ( let ((d (+ df 2)))
        (if (> k 0)  
            (/ (* x x) (- d (fn x (- k 1) d)))
            (/ (* x x) (- d 1))
        )
    )
)

(let  ((x 2) (k 3))
    (print (tan-cf x k))
)