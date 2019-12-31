(format t "~A~%" (length '(a b c)))
(format t "~A~%" (subseq '(a b c d) 1 2))
(format t "~A~%" (subseq '(a b c d) 1))
(format t "~A~%" (reverse '(a b c)))

(defun mirror? (s)
    (let ((len (length s)))
        (and (evenp len)
            (let ((mid (/ len 2)))
                (equal (subseq s 0 mid)
                       (reverse (subseq s mid)))))))

(format t "~A~%" (mirror? '(a b b a)))

(format t "~A~%" (sort '(0 2 1 3 8) #'>))

(format t "~A~%" (every #'oddp  '(1 3 5)))
(format t "~A~%" (some  #'evenp '(1 2 3 5)))
(format t "~A~%" (every #'> '(1 2 3) '(0 1 2)))
