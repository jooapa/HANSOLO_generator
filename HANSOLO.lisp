(with-open-file (out "HANSOLO.hs" :direction :output :if-exists :supersede)
    (dotimes (i 1000000)
        (write-line "HANSOLO" out)))
