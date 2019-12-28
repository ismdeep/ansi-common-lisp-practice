(defun our-third (x)
    (car (cdr (cdr x))))

(format t "~A~%" (our-third '(a b c d)))
