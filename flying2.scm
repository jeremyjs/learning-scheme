; returns horizontal distance traveled for initial velocity v and angle a
(define (hdist v a)
  (let* ((pi
           (* 4 (atan 1.0)))
         (g 9.8) ; m/s^2
         (arad
           (if (zero? a)
             0 (* pi (/ a 180))))
         (horzv
           (* v (cos arad)))
         (vertv
           (* v (sin arad)))
         (dur
           (/ (* 2 vertv) g)))
    (* horzv dur)))
(display "\n")
(display
  (if (equal? (hdist 40 30) 141.39190265868385)
    "1. pass\n"
    (string-append
      (string (hdist 40 30))
      " should be "
      (string 141.39190265868385)
      "\n")))
