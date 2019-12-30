(let ((x nil) (y nil))
    (setf x '(a b c)
          y (copy-list x))
    (format t "~A~%" x)
    (format t "~A~%" y)
    (format t "~A~%" (eql x y))
    (format t "~A~%" (equal x y)))

(defun our-copy-list (lst)
    (if (atom lst)
        lst
        (cons (car lst) (our-copy-list (cdr lst)))))

(format t "~%")

(let ((x nil) (y nil))
    (setf x '(a b c)
          y (our-copy-list x))
    (format t "~A~%" x)
    (format t "~A~%" y)
    (format t "~A~%" (eql x y))
    (format t "~A~%" (equal x y)))


(format t "~A~%" (append '(a b) '(c d) 'e))
