#!/bin/bash
echo "a"
read inch
x=$(echo "scale=2;$inch/12"| bc)
echo "b"
y=$(echo "scale=2;60*40/(2.54*2.54)"| bc)
echo $y
echo "c"
z=$(echo "scale=2;($y*25)"| bc)
echo $z
