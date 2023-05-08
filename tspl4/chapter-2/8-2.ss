(define my-append
  (lambda (obj1 obj2)
    (if (null? obj1)
	obj2
	(cons (car obj1) (my-append (cdr obj1) obj2)))))

;; test

(equal? (apply my-append arg) (apply append arg))
