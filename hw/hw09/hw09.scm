(define-macro (when condition exprs)
  (list 'if condition (cons 'begin exprs) ''okay))

(define-macro (switch expr cases)
    (cons 'begin (map (lambda (case) (car (cdr case))) (filter (lambda (case) (equal? (car case) (eval expr))) cases))))