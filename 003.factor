#! /usr/bin/env factor

USING: kernel math.primes.factors math.parser
sequences io ;
IN: euler-003

: solution ( -- n )
    600851475143 factors last ;

solution number>string print
