(define make-queue
  (lambda ()
      (cons '() '())))
			      
(define emptyq?		      
  (lambda (q)		      
    (null? (car q))))

(define putq!
  (lambda (q v)
    (let ([n (cons v '())])
      (if (emptyq? q)
	  (begin
	    (set-car! q n)
	    (set-cdr! q n))
	  (begin
	    (set-cdr! (cdr q) n)
	    (set-cdr! q n))))))

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
