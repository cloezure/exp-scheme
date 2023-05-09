
(define count-fib-first 0)
(define fibonacci1
  (lambda (n)
    (let fib ([i n])
      (set! count-fib-first (+ count-fib-first 1))
      (cond
        [(= i 0) 0]
        [(= i 1) 1]
        [else (+ (fib (- i 1)) (fib (- i 2)))]))))

(define count-fib-second 0)
(define fibonacci2
  (lambda (n)
    (if (= n 0)
        0
        (let fib ([i n] [a1 1] [a2 0])
	  (set! count-fib-second (+ count-fib-second 1))
          (if (= i 1)
              a1
              (fib (- i 1) (+ a1 a2) a1))))))

