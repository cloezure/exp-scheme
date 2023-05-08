;;;  a.	

(let ([x 'a] [y 'b])
  (list (let ([c 'c]) (cons c y))
        (let ([d 'd]) (cons x d))))

;;;  b.	

(let ([x '((a b) c)])
  (cons (let ([tail (cdr x)])
          (car tail))
        (let ([pair (car x)])
          (cons (let ([tail (cdr pair)])
                  (car tail))
                (cons (let ([head (car pair)])
                        head)
                      (cdr pair))))))
