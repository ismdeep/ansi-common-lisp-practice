(format t "~A~%" (function +))
(format t "~A~%" #'+)
(format t "~A~%" (apply #'+ '(1 2 3)))
(format t "~A~%" (apply #'+ 1 2 '(3 4 5)))
(format t "~A~%" (funcall #'+ 1 2 3 4 5))
(format t "~A~%" (lambda (x y) (+ x y)))
(format t "~A~%" ((lambda (x) (* x x)) 10))
(format t "~A~%" (funcall #'(lambda (x) (* x x)) 10))

