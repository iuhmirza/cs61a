(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ascending? asc-lst)
    (if (null? (cdr asc-lst))
        #t
        (and (not (> (car asc-lst) (cadr asc-lst))) (ascending? (cdr asc-lst)))))


(define (square n) (* n n))

(define (pow base exp)
    (cond 
        ((= exp 0) 1)
        ((= exp 1) base)
        (else
            (if (even? exp)
                (square (pow base (/ exp 2)))
                (* base (square (pow base (/ (- exp 1) 2))))))))
