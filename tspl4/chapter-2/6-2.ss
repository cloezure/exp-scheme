(define compose
  (lambda (f g)
    (lambda (x)
      (f (g x)))))

(define my-cadr (compose car cdr))

(define my-cddr (compose cdr cdr))
