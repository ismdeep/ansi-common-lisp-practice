; (dotimes (i n s) () ...)
; i => [0, 1, ... , n]
; return value is s
; ... is operations

(defun sum (n)
    (let ((s  0))
        (dotimes (i n s)
            (incf s i))))

(format t "~D~%" (sum 10))
