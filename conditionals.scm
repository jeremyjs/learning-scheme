(define (abs x)
  (if (< x 0)
    (- x)
    x
  )
)

(define (recip x)
  (if (= x 0)
    #f
    (/ 1 x)
  )
)

(define (int->ascii c)
  (if (or (< c 33) (> c 126))
    #f
    (integer->char c)
  )
)
