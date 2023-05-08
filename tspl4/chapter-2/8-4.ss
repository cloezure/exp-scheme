(define my-list-ref
  (lambda (xs nth)
    (if (zero? nth)
	(car xs)
	(my-list-ref (cdr xs) (- nth 1)))))

(define my-list-tail
  (lambda (xs nth)
    (if (zero? nth)
	xs
	(my-list-tail (cdr xs) (- nth 1)))))
