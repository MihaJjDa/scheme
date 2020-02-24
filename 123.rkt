#lang scheme/base

(define (fact n)
  (cond ((= n 0) 1)
        (else (* (fact (- n 1)) n))))
