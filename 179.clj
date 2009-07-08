(defn make-divs-seq [limit]
  (loop [i (int 0), d (int 2), divs (int-array limit 1)]
    (cond
      (== d limit) divs
      (>= i limit) (recur (int 0) (unchecked-inc d) divs)
      :default (recur (unchecked-add i d)
                      d
                      (do
                        (aset divs i (unchecked-inc (aget divs i)))
                        divs)))))

(loop [divs-seq (make-divs-seq (int 1e7)), same-cnt 0]
  (if (== 1 (count divs-seq))
    (println same-cnt)
    (recur
      (rest divs-seq)
      (if (= (first divs-seq) (second divs-seq)) (inc same-cnt) same-cnt))))
