(define my-list?
  (lambda (ls)
    (let loop ([t ls] [r (cdr ls)])
      (cond
       [(eq? r t) #f]
       [(pair? r) (loop (cdr t) (cdr r))]
       [else (null? r)]))))
