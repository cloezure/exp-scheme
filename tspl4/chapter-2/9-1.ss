
(define make-counter
  (lambda (initial-value amount)
    (let ([v initial-value])
      (lambda ()
	(let ([p v])
	  (set! v (+ v amount))
	  p)))))
