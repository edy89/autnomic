(defun main ()
  (dotimes (_ (read))
    (format t "~a " (count-if #'vowelp (read-line)))))

(defun vowelp (ch)
  (member ch '(#\a #\o #\u #\i #\e #\y) :test #'char-equal))

(main)
