(defparameter *x* nil)

(setf *x* (cons 'a nil))
(format t "~A~%" *x*)

(setf *x* (cons 'a '(b c)))
(format t "~A~%" *x*)

(let ((y nil))
    (setf y (list 'a 'b 'c))
    (format t "~A~%" y)
    (format t "~A~%" (car y))
    (format t "~A~%" (cdr y)))

(let ((z nil))
    (setf z (list 'a (list 'b 'c) 'd))
    (format t "~A~%" z)
    (format t "~A~%" (car (cdr z))))

(defun our-listp (x)
    (or (null x) (consp x)))

(defun our-atomp (x) (not (consp x)))

(format t "~A~%" (our-listp (list 'a 'b 'c)))
(format t "~A~%" (our-listp ()))
(format t "~A~%" (our-atomp 'a))
(format t "~A~%" (our-atomp (list 'a 'b)))