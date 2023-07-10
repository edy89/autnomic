(import io)

(defn sum-arrays-numbers [length-of-arrays]
  (def sum-results (array))
  (def number-pairs (array))

  (for [i (range length-of-arrays)]
    (def numbers (string/split (io/read-line) " "))
    (array/push! number-pairs numbers))

  (for [number-pair number-pairs]
    (array/push! sum-results (apply + number-pair)))

  sum-results)

(defn main []
  (try
    (def length-of-arrays (-> (io/read-line) tonumber))
    
    (let [result (sum-arrays-numbers length-of-arrays)]
      (print (string/join " " result)))

    (catch :default err
      (throw (error (string/format "Error: %s: %s" (.-name err) (.-message err)))))))

