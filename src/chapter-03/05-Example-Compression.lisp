; run-length encoding

(defun compress (x)
    (if (consp x)
        (compr (car x) 1 (cdr x))
        x))

(defun compr (elt n lst)
    (if (null lst)
        (list (n-elts elt n))
        (let ((next (car lst)))
            (if (eql next elt)
                (compr elt (+ n 1) (cdr lst))
                (cons (n-elts elt n)
                    (compr next 1 (cdr lst)))))))

(defun n-elts (elt n)
    (if (> n 1)
        (list n elt)
        elt))


(format t "~A~%" (compress '(1 1 1 0 1 0 0 0 0 1)))

