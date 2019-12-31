(defun our-copy-tree (tr)
    (if (atom tr)
        tr
        (cons (our-copy-tree (car tr))
              (our-copy-tree (cdr tr)))))

(let ((tree '(a (b c) d)) (tree-2 nil))
    (setf tree-2 (our-copy-tree tree))
    ; (setf tree-2 tree)
    (format t "~A~%" tree)
    (format t "~A~%" tree-2)
    (format t "~A~%" (eql tree tree-2)))


(format t "~A~%" (substitute 'y 'x '(and (integerp x) (zerop (mod x 2)))))

(format t "~A~%" (subst 'y 'x '(and (integerp x) (zerop (mod x 2)))))

(defun our-subst (new old tree)
    (if (eql tree old)
        new
        (if (atom tree)
            tree
            (cons (our-subst new old (car tree))
                  (our-subst new old (cdr tree))))))

(format t "~A~%" (our-subst 'y 'x '(and (integerp x) (zerop (mod x 2)))))
