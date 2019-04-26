#!/bin/bash

echo "Enter Degree: "
read degree

# -gt (>=), -lt (<=), -ge (>), -le (<), -eq (=), -ne (!=)
if [ "$degree" -ge "50" ]
then
echo "He pass"
else
echo "He fail"
fi

#if -elif
#if  [ "$degree" -eq "80" ]; then
#    echo "He got 80"
#elif [ "$degree" -eq "70" ]; then
#    echo "He got 70"
#fi

[ "$degree" -eq "80" ] && echo "he got 80" || echo "he didnt got 80"
#[ "$degree" -eq "70" ] && \
#echo "he got 70"

#change ot if
if [ "$degree" -eq "80" ]; then
 echo "he got 80"
 else
   echo "he didnt got 80"
fi
