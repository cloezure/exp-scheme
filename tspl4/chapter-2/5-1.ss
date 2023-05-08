;;  a.	

(let ([f (lambda (x) x)])
  (f 'a))

;; => a

;;  b.	

(let ([f (lambda x x)])
  (f 'a))

;; => (a)

;;  c.	

(let ([f (lambda (x . y) x)])
  (f 'a))

;; => a

;;  d.	

(let ([f (lambda (x . y) y)])
  (f 'a))

;; => ()
