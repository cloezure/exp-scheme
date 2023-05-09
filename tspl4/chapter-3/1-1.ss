
(define ls '(a b c d e))

(let ([x (memv 'a ls)])
  (and x (memv 'b x)))

;; =>

((lambda (x) (and x (memv 'b x))) (memv 'a ls))

;; =>

((lambda (x) (if x (and (memv 'b x)) #f)) (memv 'a ls))

;; =>

((lambda (x) (if x (memv 'b x) #f)) (memv 'a ls))
