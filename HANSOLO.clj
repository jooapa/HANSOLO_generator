(require '[clojure.java.io :as io])

(with-open [out-file (io/writer "HANSOLO.hs")]
    (dotimes [_ 1000000]
        (.write out-file "HANSOLO\n")))
