(defun len (lst)
    (if (null lst)
        0
        (+ (len (cdr lst)) 1)))

(format t "~A~%" (len '(a a b b d)))
