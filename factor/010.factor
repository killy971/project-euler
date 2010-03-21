#! /usr/bin/env factor

USING: kernel math.primes math.parser sequences io ;
IN: euler-007

: solution ( -- n )
    2000000 primes-upto sum ;

solution number>string print
