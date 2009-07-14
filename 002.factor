#! /usr/bin/env factor

USING: kernel math math.parser sequences io ;
IN: euler-002

: next-fib ( seq -- seq )
    dup 2 tail*
    dup peek swap first + suffix ;

: fib-upto ( n -- seq )
    0 1
    [ pick over >= ] [ tuck + dup ] produce
    [ 3drop ] dip
    but-last-slice { 0 1 } prepend ;

: solution ( -- n )
    4000000 fib-upto [ even? ] filter sum ;

solution number>string print
