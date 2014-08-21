(define pi (* 4 (atan 1.0)))
(define g 9.8) ; m/s^2

; degrees to radians
(define (deg->rad d)
  (if (zero? d)
    0 (* pi (/ d 180))))

; returns meters traveled at v m/s for t sec
(define (dist v t)
  (* v t))

; returns time of flight for an object at an initial vertical velocity v
(define (airtime v)
  (/ (* 2 v) g))

; returns horizontal distance traveled for initial velocity v and angle a
(define (hdist v a)
  (define arad (deg->rad a))
  (define horizontal (* v (cos arad)))
  (define vertical (* v (sin arad)))
  (define duration (airtime vertical))
  (dist horizontal duration))

