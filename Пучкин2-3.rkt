#lang scheme/base

(define (nFib n s)
  (if (< n (car s)) (cdr s)
      (nFib n (cons (+ (car s) (cadr s)) s))))

(define (myfun n fib res)
  (cond ((null? fib) res)
        ((= n 0) (myfun 0 (cdr fib) (cons 0 res)))
        ((< n (car fib)) (myfun n (cdr fib) (cons 0 res)))
        (else (myfun (- n (car fib)) (cdr fib) (cons 1 res)))))

(define (gorner10 lst)
  (foldr (lambda (a b) (+ (* 10 b) a)) 0 lst))

(define (fun2-3 n)
  (gorner10 (cdr (myfun n (nFib n '(1 1)) '()))))