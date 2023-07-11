#!/bin/tcsh
# edy89.csh

set input = "$<"

set nums = `echo $input | awk '{print $1, $2}'`

@ suma = $nums[1] + $nums[2]
echo "$suma"

# cat DATA.lst | ./edy89.csh
# 23510
