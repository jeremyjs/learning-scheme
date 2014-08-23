; test env
(load "test-env.scm")

; reverses the order of a list
(define (my-reverse l)
  (my-reverse-aux l '()))
(define (my-reverse-aux l r)
  (if (null? l)
    r
    (let ((r (cons (car l) r)))
        r
        (my-reverse-aux (cdr l) r))))
(test equal? (my-reverse '()) '())
(test equal? (my-reverse '(1)) '(1))
(test equal? (my-reverse '(1 2 3)) '(3 2 1))

; sums a list of numbers
(define (sum l)
  (sum-aux l 0))
(define (sum-aux l n)
  (if (null? l)
    n
    (let ((n (+ n (car l))))
      (sum-aux (cdr l) n))))
(test eq? (sum '(1 2 3)) 6)
(test eq? (sum '()) 0)
(test eq? (sum '(5)) 5)

