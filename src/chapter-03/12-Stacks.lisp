(let ((stack '()))
    (format t "~A~%" stack)
    (push 'a stack)
    (push 'b stack)
    (format t "~A~%" stack)
    (format t "~A~%" (pop stack))
    (format t "~A~%" stack))

; Define a reverse function with stack
(defun our-reverse (lst)
    (let ((acc nil))
        (dolist (item lst)
            (push item acc))
        acc))

(format t "~A~%" (our-reverse '(a b c d)))


