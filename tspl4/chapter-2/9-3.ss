(define make-stack                                 
  (lambda ()                                       
    (let ([ls '()])                                
      (lambda (msg . args)                         
        (case msg                                  
          [(empty? mt?) (null? ls)]
	  [(ref) (list-ref ls (car args))]
	  [(set!) (set-car! (list-tail ls (car args)) (cadr args))]
          [(push!) (set! ls (cons (car args) ls))]
          [(top) (car ls)]
          [(pop!) (set! ls (cdr ls))]
          [else "oops"])))))

(define stack (make-stack))

(stack 'push! 10)
(stack 'push! 20)
(stack 'push! 30)

(stack 'ref 0)

(stack 'set! 0 100)

(stack 'empty?)

