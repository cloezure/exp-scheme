(define make-queue
  (lambda ()
    (let ([end (cons 'ignored '())])
      (cons end end))))

(define putq!
  (lambda (q v)
    (let ([end (cons 'ignored '())])
      (set-car! (cdr q) v)
      (set-cdr! (cdr q) end)
      (set-cdr! q end))))
			      
(define emptyq?		      
  (lambda (q)
    (null? (car q))))

(define getq
  (lambda (q)
    (if (emptyq? q)
	(assertion-violation 'getq "Queue is empty!")
	(car (car q)))))

(define delq!
  (lambda (q)
    (if (emptyq? q)
	(assertion-violation 'delq! "Queue is empty!")
	(set-car! q (cdr (car q))))))

(define myq (make-queue))

(putq! myq 'a)
(putq! myq 'b)
(getq myq)
(emptyq? myq)
(delq! myq)

