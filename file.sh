#!/bin/bash

echo "hello" > welcome.txt
echo "how are you?" >> welcome.txt

echo read file use cat
cat welcome.txt

echo read file line by line

while read line 
do  
    echo $line
done < welcome.txt

echo "write multi line to file"
cat <<EOF > users.txt
diego
vladi
enna
EOF