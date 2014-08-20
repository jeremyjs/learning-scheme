(define (abs x)
  (if (< x 0)
    (- x) x))

(define (recip x)
  (if (= x 0)
    #f
    (/ 1 x)))

(define (int->ascii c)
  (if (or (< c 33) (> c 126))
    #f
    (integer->char c)))

(define (f x y z)
  (and (> x 0) (> y 0) (> z 0) (* x y z)))

(define (f2 x y z)
  (if (and (> x 0) (> y 0) (> z 0))
    (* x y z) #f))

(define (g x y z)
  (and (or (< x 0) (< y 0) (< z 0)) (* x y z)))

(define (g2 x y z)
  (if (or (< x 0) (< y 0) (< z 0))
    (* x y z) #f))

(define (grade score)
  (cond
    ((>= score 90) "A")
    ((<= 80 score 89) "B")
    ((<= 70 score 79) "C")
    ((<= 60 score 69) "D")
    ((< score 60) "F")))
