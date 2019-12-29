; iteration version
(defun show-squares-iteration (start end)
    (do ((i start (+ i 1)))
        ((> i end) 'done)
        (format t "~A ~A~%" i (* i i))))

; recursion version
(defun show-squares-recursion (start end)
    (if (> start end)
        'done
        (progn
            (format t "~A ~A~%" start (* start start))
            (show-squares-recursion (+ start 1) end))))



(show-squares-iteration 1 10)
(show-squares-recursion 1 10)



; our-length iteration version
(defun our-length-iteration (lst)
    (let ((len 0))
        (dolist (obj lst)
            (setf len (+ len 1)))
        len))

; our-length recursion version
(defun our-length-recursion (lst)
    (if (null lst)
        0
        (+ (our-length-recursion (cdr lst)) 1)))

(defparameter *lst* (quote (1 2 3 4 5)))
(format t "~A~%" (our-length-iteration *lst*))
(format t "~A~%" (our-length-recursion *lst*))
