; lambda ?
; I don't know how to use it yet. -_-

(defun addn (n)
    #'(lambda (x)
        (+ x n)))

(format t "~A~%" (addn 10))
