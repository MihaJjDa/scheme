#lang racket

;почти полностью собрал из лекций, не знаю как такое оценивать

(define (ints1 n)
  (stream-cons n (ints1 (+ n 1))))

(define ints (ints1 1))

(define (sieve str)
  (stream-cons
   (stream-first str)
   (sieve (stream-filter
           (lambda (x)
             (not (= 0 (remainder x (stream-first str)))))
           (stream-rest str)))))

(define primes
  (sieve (stream-rest ints)))

(define (streams-mul s1 s2)
  (cond ((stream-empty? s1) empty-stream)
        ((stream-empty? s2) empty-stream)
        (else (stream-cons
               (* (stream-first s1) (stream-first s2))
               (streams-mul (stream-rest s1) (stream-rest s2))))))


(define p!s (stream-cons 1 (streams-mul p!s primes)))

(define (fun2-4 n)
  (stream-ref p!s (- n 1)))



