;;  a.	(cons 'car 'cdr)
(cons 'car 'cdr) ;; (car . cdr)
;;  b.	(list 'this '(is silly))
(list 'this '(is silly)) ;; (this (is silly))
;;  c.	(cons 'is '(this silly?))
(cons 'is '(this silly?)) ;; (is this silly)
;;  d.	(quote (+ 2 3))
(quote (+ 2 3)) ;; (+ 2 3)
;;  e.	(cons '+ '(2 3))
(cons '+ '(2 3)) ;; (+ 2 3)
;;  f.	(car '(+ 2 3))
(car '(+ 2 3)) ;; +
;;  g.	(cdr '(+ 2 3))
(cdr '(+ 2 3)) ;; (2 3)
;;  h.	cons
;;cons ;; #<procedure>
;;  i.	(quote cons)
(quote cons) ;; cons
;;  j.	(quote (quote cons))
(quote (quote cons)) ;; (quote cons)
;;  k.	(car (quote (quote cons)))
(car (quote (quote cons))) ;; quote
;;  l.	(+ 2 3)
(+ 2 3) ;; 5
;;  m.	(+ '2 '3)
(+ '2 '3) ;; 5
;;  n.	(+ (car '(2 3)) (car (cdr '(2 3))))
(+ (car '(2 3)) (car (cdr '(2 3)))) ;; 5
;;  o.	((car (list + - * /)) 2 3)
((car (list + - * /)) 2 3) ;; 5
