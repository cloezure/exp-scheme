(define x '((a b) (c d)))

;; b
(car (cdr (car x)))

;; c
(car (car (cdr x)))

;; d
(car (cdr (car (cdr x))))
