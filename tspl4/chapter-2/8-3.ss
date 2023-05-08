(define my-make-list
  (lambda (n obj)
    (if (zero? n)
	'()
	(cons obj (my-make-list (- n 1) obj)))))

;; test

(make-list 7 5)
(my-make-list 7 5)
