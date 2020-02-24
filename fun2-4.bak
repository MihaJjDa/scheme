#lang racket

(define (ints n)
  (stream-cons n (ints (+ n 1))))

(define (dfact2? x k)
  (cond ((= x 1) #t)
        ((= (remainder x k) 0) (dfact2? (quotient x k) (+ k 2)))
        (else #f)))
        
(define (dfact? x)
  (if (= (remainder x 2) 0) (dfact2? x 2) (dfact2? x 1)))

(define fun2-3 (stream-filter (lambda (x) (not (dfact? x))) (ints 4)))
