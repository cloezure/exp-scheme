(define my-odd?
  (lambda (n)
    (if (zero? n)
	#f
	(my-even? (- n 1)))))

(define my-even?
  (lambda (n)
    (if (zero? n)
	#t
	(my-odd? (- n 1)))))
	   
