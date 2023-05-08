(let ([ls (cons 'a '())])
  (set-cdr! ls ls)
  ls)

;; in repl => error cycle detected

;; 42 page => length infinite loop
;; length built-in return 0
