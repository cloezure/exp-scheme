;;  a.
(lambda (f x) (f x))

;; none

;;  b.
(lambda (x) (+ x x))

;; +

;;  c.
(lambda (x y) (f x y))

;; f

;;  d.
(lambda (x)
  (cons x (f x y)))

;; f y cons

;;  e.
(lambda (x)
  (let ([z (cons x y)])
    (x y z)))

;; y cons

;;  f.
(lambda (x)
  (let ([y (cons x y)])
    (x y z)))

;; cons y z
