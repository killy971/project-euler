(defn divisors-count
  [n]
  (* 2 (count (filter #(zero? (rem n %))
                      (range 1 (Math/sqrt n))))))

