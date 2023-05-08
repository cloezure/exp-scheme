
;;  a.	(+ (- (* 3 a) b) (+ (* 3 a) b))

(let ([c '(* 3 a)])
  (+ (- c b) (+ c b)))

;;  b.	(cons (car (list a b c)) (cdr (list a b c)))
(let ([x '(a b c)])
  (cons (car x) (cdr x)))
