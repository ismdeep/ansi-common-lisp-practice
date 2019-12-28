(defun is-member (obj lst)
    (if (null lst)
        nil
        (if (eql (car lst) obj)
            T
            (is-member obj (cdr lst)))))

(format t "~A~%" (is-member 1 '(2 3 4 1 7 8)))
