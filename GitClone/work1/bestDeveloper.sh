#!/bin/bash
# 1 . Calculate the scores

nb_projects=0

nb_commits=0

score=0

line_with_score=""

while read line

do

arr=(` echo $line | tr ',' ' ' `)

nb_projects=${arr[2]}


nb_commits=${arr[3]}


score=$(expr $nb_projects \* 3 + $nb_commits \* 7 )


line_with_score="${line},${score}"

echo $line_with_score >> developers2.csv

done < developers.csv


# The last line

arr=(` echo $line | tr ',' ' ' `)

nb_projects=${arr[2]}


nb_commits=${arr[3]}


score=$(expr $nb_projects \* 3 + $nb_commits \* 7 )


line_with_score="${line},${score}"

echo $line_with_score >> developers2.csv


echo " "

cat developers2.csv

rm developers.csv

mv developers2.csv developers.csv

Finally, I search for the best developer using this script

#2. Looking for the best developper

echo "=========== Looking for the best developer ============="


max_score=0 # Will store the best score

best_dev="" # Will store the developer who has the best score

while read line

do

#1. get the score from the line

arr=(` echo $line | tr ',' ' ' `)

#2. Comparing the score from the current line with the best current score

if [[ ${arr[4]} > ${max_score} ]]; then

#statements

max_score=${arr[4]}

best_dev=${arr[0]}

fi

done < developers.csv


echo "Best developer is $best_dev with the score $max_score "   