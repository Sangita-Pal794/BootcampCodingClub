#!/bin/bash
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c
echo $a ""$b ""$c
z=$(($c +$(($a%$b))))
echo $z

