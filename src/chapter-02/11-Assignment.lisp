(declaim (sb-ext:muffle-conditions cl:warning))

(setf *glob* 98)

(format t "~A~%" *glob*)

(format t "~A~%" (let ((n 10))
    (setf n 2)
    n))

(setf x (quote (a b c)))
(setf (car x) 'x)
(format t "~A~%" x)

(setf a 1
      b 2
      c 3)

(format t "~A~%" b)