(define vector-empty?
  (lambda (vec)
    (zero? (vector-length vec))))

(define make-stack
  (lambda (n)
    (let ([stk (make-vector n)])
      (lambda (msg . args)
        (case msg
          [(empty? mt?) (vector-empty? stk)]
	  [(ref) (vector-ref stk (car args))]
	  [(set!) (vector-set! stk (car args) (cadr args))]
          [(push!) (set! stk (list->vector (cons (car args) (vector->list stk))))]
          [(top) (vector-ref stk 0)]
          [(pop!) (set! stk (list->vector (cdr (vector->list stk))))]
          [else "oops"])))))

(define stack (make-stack 4))

(stack 'empty?)
(stack 'ref 0)
(stack 'set! 0 5)
(stack 'set! 2 8)
(stack 'push! 9)
(stack 'pop!)

