
(define factor
  (lambda (n)
    (let f ([n n] [i 2] [step 1])
      (if (> (* i i) n)
          (list n)
          (if (= (gcd n i) 1)
              (f n (+ i step) 2)
              (cons i (f (/ n i) i step)))))))
