#!/bin/bash -x
Dice_Digit_1=$((RANDOM%6))
echo $Dice_Digit_1
Dice_Digit_2=$((RANDOM%6))
echo $Dice_Digit_2
z=$(($Dice_Digit_1+$Dice_Digit_2))
echo $z
