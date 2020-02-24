#lang scheme/base

(define (zip a b)
  (cond ((and (null? a) (null? b)) '())
        ((null? a) (cons (list '() (car b)) (zip '() (cdr b))))
        ((null? b) (cons (list (car a) '()) (zip (cdr a) '())))
        (else (cons (list (car a) (car b)) (zip (cdr a) (cdr b))))))

(define (inmin a b)
  (let ((carb (car b))
        (cadrb (cadr b)))
  (cond ((< a carb) (list a (+ cadrb 1) (list cadrb)))
        ((= a carb) (list a (+ cadrb 1) (cons cadrb (caddr b))))
        (else (list carb (+ cadrb 1) (caddr b))))))

(define (fun2-1 lst)
  (caddr (foldr inmin (list (car lst) 0 '()) lst)))

(fun2-1 (list -1 0 1 -1 0 1 -1))