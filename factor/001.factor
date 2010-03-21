#! /usr/bin/env factor

USING: kernel math math.ranges math.parser sequences io ;
IN: euler-001

: div? ( n d -- ? ) mod 0 = ;

: div-3-or-5? ( n -- ? ) dup 3 div? swap 5 div? or ;

: solution ( -- n )
    999 [0,b] [ div-3-or-5? ] filter sum ;

solution number>string print
