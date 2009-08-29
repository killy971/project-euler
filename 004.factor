#! /usr/bin/env factor

USING: kernel math math.ranges math.parser sorting
sequences io ;
IN: euler-004

: pal? ( n -- ? ) number>string dup reverse = ;

: mul-seq ( n b -- seq ) [0,b] [ over * ] map nip ;

: all-mul-seq ( b -- seq )
    dup { }
    [ dup mul-seq append ] reduce
    nip ;

: solution ( -- n )
    1000 all-mul-seq
    [ pal? ] filter
    natural-sort last ;

solution number>string print
