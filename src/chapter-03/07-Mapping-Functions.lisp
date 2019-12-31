(format t "~A~%" (mapcar #'(lambda (x) (* x x)) '(1 2 3 4 5 6 7 8)))

(format t "~A~%" (mapcar #'list '(a b c) '(1 2 3 4)))

(format t "~A~%" (maplist #'(lambda (x) x) '(a b c)))
