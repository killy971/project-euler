(defn fact [n]
  (loop [i n, f 1]
    (if (zero? i) f (recur (dec i) (* f i)))))

(defn digits-fact [number]
  (loop [n number, res 0]
    (if (< n 10)
      (+ (fact n) res)
      (recur (quot n 10) (+ (fact (rem n 10)) res)))))

(defn chain-length [start]
  (loop [n start, i 1, chain (set [])]
    (let [next-n (digits-fact n)]
      (if (contains? chain next-n)
        i
        (recur next-n (inc i) (conj chain next-n))))))

(println (count (filter #(= (chain-length %) 60) (range 1000000))))
