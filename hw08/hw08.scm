(define (my-filter func lst) 
  (cond 
    ((null? lst) nil)
    ((func (car lst)) (cons (car lst) (my-filter func (cdr lst))))
    (else (my-filter func (cdr lst)))
  )
)

(define (interleave s1 s2) 
  (cond 
    ((null? s1) s2)
    ((null? s2) s1)
    (else (cons (car s1) (interleave s2 (cdr s1))))
  )
)

(define (accumulate merger start n term)
  (cond 
    ((= n 0) start)
    (else (merger (term n) (accumulate merger start (- n 1) term)))
  )
)

(define (no-repeats lst) 
  (if (null? lst) 
    nil 
    (cons 
      (car lst) 
      (no-repeats (my-filter (lambda (x) (not (equal? x (car lst)))) (cdr lst)))
    )
  )
)
