#!/bin/bash
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c
echo $a ""$b ""$c
z=$(($a +$(($b*$c))))
echo $z
y=$(($c +$(($b*$a))))
echo $y
x=$(($c +$(($a/$b))))
echo $x
