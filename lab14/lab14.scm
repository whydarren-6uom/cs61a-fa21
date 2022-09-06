(define (split-at lst n) 
    (define (helper lst n)
        (cond 
            ((or (null? lst) (= n 0)) nil)
            (else (cons (car lst) (helper (cdr lst) (- n 1))))))
    (define (delper lst n)
        (cond
            ((null? lst) nil)
            ((= n 0) lst)
            (else (delper (cdr lst) (- n 1)))))
    (cons (helper lst n) (delper lst n)))

(define (compose-all funcs) 
    (lambda (x) (if (null? funcs) x ((compose-all (cdr funcs)) ((car funcs) x))))
)