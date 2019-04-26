#!/bin/bash
echo "==========Star reading Files=========="
path=$(pwd)
echo "root path: $path"
while read gitLink
do
    cd $path
    echo "Start clonin project $gitLink"
    arr=(` echo $gitLink | tr '/' ' ' ` )
     appPath="${path}/${arr[3]}"
        #git clone $gitLink
        echo $appPath
            cd $appPath
                #git log > ../${arr[3]}_log.txt
                #rm -rf $Path

# read email
while read line
do 
    if [[ $line = "Author: "* ]];then
        if [[ $(grep "$line" "developersEmails.txt") ]];then
          echo "Already save all"
            else
              echo "Write developer info to file"
                echo $line >> developersEmails.txt  
        fi
    fi
done < ../${arr[3]}_log.txt
#read developers name

#read number of projects

#read number of commits

#Score

done < links.txt