#! /usr/bin/env factor

USING: kernel math.primes math.parser sequences io ;
IN: euler-007

: nth-prime ( n -- n )
    0 tuck
    [ drop next-prime ] reduce
    nip ;

: solution ( -- n )
    10001 nth-prime ;

solution number>string print
