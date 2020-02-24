#lang scheme/base

(define (myfuna lst)
  (if (null? lst) 0
      (+ (* (car lst) (car lst)) (myfuna (cdr lst))))) 
  
(define (myfunb lst)
  (define (loop i s x)
    (if (= i 0) s
        (loop (- i 1) (+ (* (car x) (car x)) s) (cdr x))))
  (loop (length lst) 0 lst)) 

(define (fun2-2a lst)
  (if (or (null? lst) (= (length lst) 1)) 0
      (sqrt (myfuna lst))))

(define (fun2-2b lst)
  (if (or (null? lst) (= (length lst) 1)) 0
      (sqrt (myfunb lst))))