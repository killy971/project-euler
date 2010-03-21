#! /usr/bin/env factor

USING: kernel math math.ranges math.parser sequences io ;
IN: euler-006

: sum-sqr ( n -- n ) [0,b] [ sq ] map 0 [ + ] reduce ;

: sqr-sum ( n -- n ) [0,b] 0 [ + ] reduce sq ;

: solution ( -- n ) 100 dup sum-sqr swap sqr-sum + ;

solution number>string print
