(define transpose
  (lambda (xs)
    (cons
     (map car xs)
     (map cdr xs))))


(transpose '((a . 1) (b . 2) (c . 3)))
