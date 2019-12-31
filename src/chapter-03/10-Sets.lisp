(defun is-member (obj lst)
    (if (consp (member obj lst))
        T
        Nil))

(format t "~A~%" (is-member 'a '(a b c)))

(format t "~A~%" (member '(a) '((a) (z)) :test #'eql))
(format t "~A~%" (member '(a) '((a) (z)) :test #'equal))
(format t "~A~%" (member 'a '((a) (z)) :key #'car))
(format t "~A~%" (member 'a '((a) (z)) :key #'car :test #'equal))
(format t "~A~%" (member 'a '((a) (z)) :key #'car :test #'eql))
(format t "~A~%" (member-if #'oddp '(2 3 4)))


(format t "~A~%" (adjoin 'a '(a b c)))

(format t "~A~%" (union '(a b c) '(c d f)))
(format t "~A~%" (intersection '(a b c) '(b c d)))
(format t "~A~%" (set-difference '(a b c) '(b c d)))

