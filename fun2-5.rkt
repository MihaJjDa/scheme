#lang racket

;почти полностью собрал из лекций, не знаю как такое оценивать

(define (make-counter n)
  (lambda () (set! n (+ n 1)) n))

(define ca (make-counter 0))




