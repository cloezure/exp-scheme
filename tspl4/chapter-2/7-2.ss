(define shorter
  (lambda (lst1 lst2)
    (if (< (length lst2) (length lst1))
	lst2
	lst1)))
