
(define-syntax my-let*
  (syntax-rules ()
    [(_ () b1 b2 ...)
     (let () b1 b2 ...)]
    [(_ ((x e) (y k) ...) b1 b2 ...)
     (let ((x e))
       (my-let* ((y k) ...)
		b1 b2 ...))]))

(let* ((x 10) (y (+ x x)))
  (+ x y))

(my-let* ((x 10) (y (+ x x)))
  (+ x y))

(expand
 '(my-let* ((x 10) (y (+ x x)))
     (+ x y)))
