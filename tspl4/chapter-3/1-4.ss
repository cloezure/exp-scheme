
(define-syntax my-when
  (syntax-rules ()
    ((_ p ex0 ex1 ...)
     (if p (begin ex0 ex1 ...)))))

(define-syntax my-unless
  (syntax-rules ()
    ((_ p ex0 ex1 ...)
     (if (not p) (begin ex0 ex1 ...)))))

(let ([x 4])
  (unless (= x 0) (set! x (+ x 1)))
  (when (= x 4) (set! x (* x 2)))
  x)
