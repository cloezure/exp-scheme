(define shorter?
  (lambda (l1 l2)
    (cond [(null? l1) #f]
	  [(null? l2) #t]
	  [else (shorter? (cdr l1) (cdr l2))])))

(define shorter
  (lambda (l1 l2)
    (if (shorter? l1 l2)
	l1
	l2)))
