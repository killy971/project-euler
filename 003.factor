#! /usr/bin/env factor

USING: kernel math.primes.factors math.parser
sequences io ;
IN: euler-003

: solution ( -- n )
    600851475143 factors peek ;

solution number>string print
