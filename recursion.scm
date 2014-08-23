; test env
(load "test-env.scm")

; main
; returns the length of a given list l
(define (my-length l)
  (if (equal? l '())
    0 (1+ (my-length (cdr l)))))
(test eqv? (my-length '(1 2 3)) 3) ; 1
(test eqv? (my-length '()) 0)      ; 2

(define (sum l)
  (let ((len (length l)))
    (cond
      ((= len 0) 0)
      ((= len 1) (car l))
      (else (+ (car l) (sum (cdr l)))))))
(test eqv? (sum '(1 2 3)) 6) ; 3
(test eqv? (sum '(5)) 5)     ; 4
(test eqv? (sum '()) 0)      ; 5

(define (remove-from l obj)
  (if (equal? (car l) obj)
    (cdr l)
    (cons (car l) (remove-from (cdr l) obj))))
(test equal? (remove-from '(1 2 3) 3) '(1 2))               ; 6
(test equal? (remove-from '(1 2 3) 1) '(2 3))               ; 7
(test equal? (remove-from '(1 "string" 3) "string") '(1 3)) ; 8
(test equal? (remove-from '(1 (2 2.1) 3) '(2 2.1)) '(1 3))  ; 9

(define (index l obj)
  (index-aux l obj 0))
(define (index-aux l obj i)
  (cond
    ((null? l) #f)
    ((equal? (car l) obj) i)
    (else (index-aux (cdr l) obj (1+ i)))))
(test eqv? (index '(1) 1) 0)     ; 10
(test eqv? (index '(1 2 2) 2) 1) ; 11
(test eq? (index '(2 1 3) 4) #f) ; 12

