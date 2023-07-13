(defn round-division [num1 num2]
  (let [result (/ num1 num2)
        decimal-part (if (< result 0)
                       (* result -1) (math/mod result 1))
        number-sign (math/sign result)]
    (set result (+ result (if (>= (math/mod decimal-part 1) 0.5)
                            (math/sign result) 0)))
    (math/floor result)))

(defn main []
  (let [num-cases (-> (io/read-line) tonumber)
        rounded-numbers (array)]
    (for [i (range num-cases)]
      (let [[num1 num2] (string/split (io/read-line) " ")]
        (let [rounded-result (round-division (tonumber num1) (tonumber num2))]
          (array/push! rounded-numbers rounded-result))))
    (print (string/join " " rounded-numbers))))
