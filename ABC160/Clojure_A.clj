; Your code here!

(defn -main
   (def str (read-line)
    (def input (drop 2 str)
    (def result (and (= (nth input 0) (nth input 1)) (= (nth input 2) (nth input 3))))
    (if (result) "Yes" "No"))
    )
)