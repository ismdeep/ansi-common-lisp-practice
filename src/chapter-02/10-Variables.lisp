; create local variable through let
(let ((x 1) (y 2))
    (format t "~A~%" (+ x y)))

; create local variable throught let in a function
(defun ask-number ()
    (format t "Please enter a number.~%")
    (let ((val (read)))
        (if (numberp val)
            val
            (ask-number))))

; call function ask-number
(format t "~A~%" (ask-number))

; create a global variable
(defparameter *global-var* 100)

; create a global constant
(defconstant LIMIT 100)


(format t "~A~%" *global-var*)

; test a symbol is a global variable
(format t "~A~%" (boundp '*global-var*))

(format t "~A~%" LIMIT)