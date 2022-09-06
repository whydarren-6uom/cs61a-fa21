(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s) (cond 
                        ((null? (cdr s)) #t)
                        ((> (car s) (cadr s)) #f)
                        (else (ordered? (cdr s)))))

(define (square x) (* x x))

(define (pow base exp) (cond
                            ((= exp 1) base)
                            ((odd? exp) (* base (pow (square base) (quotient exp 2))))
                            (else (pow (square base) (/ exp 2)))))