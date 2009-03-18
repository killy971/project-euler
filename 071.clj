(defn closest [numer denom]
  (let [upper (/ numer denom)]
    (loop [n numer, d (inc denom), closest_n 0, closest_f 0]
      (cond
        (< 
