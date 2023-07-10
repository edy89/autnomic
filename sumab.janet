(import io)

(defn sum-two-numbers [a b]
  (print (+ a b)))

(defn main []
  (print "First value: ")
  (flush)
  (def firsValue (io/read-line))
  (print "Second value value: ")
  (flush)
  (def secondValue (io/read-line))
  (sum-two-numbers firsValue secondValue)
  (flush))
