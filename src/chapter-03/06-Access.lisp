(defun our-nthcdr (n lst)
    (if (zerop n)
        lst
        (our-nthcdr (- n 1) (cdr lst))))

(defparameter *glob* '(1 2 3 4))

(format t "~A~%" *glob*)
(format t "~A~%" (nth 0 *glob*))
(format t "~A~%" (nthcdr 2 *glob*))
(format t "~A~%" (our-nthcdr 2 *glob*))
(format t "~A~%" (cadr *glob*))
