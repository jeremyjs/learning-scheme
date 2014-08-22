; helpers
; returns a string representation of a given list
; (define (l->str l))
(define (bool->str val) (if val "#t" "#f"))
(define (to-str x)
  (call-with-output-string
   (lambda (out)
     (display x out))))

; main test env
(define github-jjman505-test-i 1)
(define (test equiv result expected)
  (display "\n")
  (display
    (string-append
      (string github-jjman505-test-i)
      (if (equiv result expected)
        ". pass"
        (string-append
          ". FAIL\n"
          "Got "
          (to-str result)
          ", should be "
          (to-str expected)))))
  (set! github-jjman505-test-i (1+ github-jjman505-test-i)))

