; helpers
(define (unless x)
  (if (not x)))

; main
(define (my_abs x)
  (if (negative? x)
    (- x)
    x
  ))

(define (recip x)
  (unless (zero? x)
    (/ x)))

(define (int->ascii c)
  (if (<= 33 c 126)
    (integer->char c)))

(define (prod3and x y z)
  (and (positive? x)
       (positive? y)
       (positive? z)
       (* x y z)))

(define (prod3or x y z)
  (if (or (negative? x)
          (negative? y)
          (negative? z))
      (* x y z)))

; returns letter grade for a given score (%)
(define (grade score)
  (cond
    ((>= score 90) "A")
    ((<= 80 score 89) "B")
    ((<= 70 score 79) "C")
    ((<= 60 score 69) "D")
    ((< score 60) "F")))

