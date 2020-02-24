#lang scheme/base

(define (is-fact n k)
  (cond ((= n 1) #t)
        ((= (remainder n k) 0) (is-fact (quotient n k) (+ k 1)))
        (else #f)))
  
;TLEN
(define (foo lst l len tmp tlen)
  (cond ((null? lst) (if (> len tlen) l tmp))
        ((is-fact (car lst) 2) (foo (cdr lst) l len (cons (car lst) tmp) (+ tlen 1)))
        (else (if (> len tlen) (foo (cdr lst) l len '() 0) (foo (cdr lst) tmp tlen '() 0)))))

(define (fun2-1 lst)
  (reverse (foo lst '() 0 '() 0)))
