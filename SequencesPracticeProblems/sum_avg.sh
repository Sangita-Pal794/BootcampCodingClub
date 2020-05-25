#!/bin/bash -x
Dice_Digit_1=$((RANDOM%6))
echo $Dice_Digit_1
Dice_Digit_2=$((RANDOM%6))
echo $Dice_Digit_2
Dice_Digit_3=$((RANDOM%6))
echo $Dice_Digit_3
Dice_Digit_4=$((RANDOM%6))
echo $Dice_Digit_4
Dice_Digit_5=$((RANDOM%6))
echo $Dice_Digit_5
z=$(($Dice_Digit_1+$Dice_Digit_2+$Dice_Digit_3+$Dice_Digit_4+$Dice_Digit_5))
echo $z

