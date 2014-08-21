(define i 1)
(define (test equiv result expected)
  (display "\n")
  (display
    (string-append
      (string i)
      (if (equiv result expected)
        ". pass"
        (string-append
          ". FAIL\n"
          "Got "
          (string result)
          ", should be "
          (string expected)))))
  (set! i (+ i 1)))
