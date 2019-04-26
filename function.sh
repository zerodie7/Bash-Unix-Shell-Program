#!/bin/bash
# $0 mean caller ($1... variables), $$ process id, $@, $?, $#
printMe(){
    echo "number of var $#"
    echo "All params: $@"
    echo "Proccess ID $$"
    echo "Welcome $1"
    echo "age $2"
    echo "job $3"

}

echo "Process ID $$"
#echo hello> job$$
printMe diego 24 "Mechatronic Enginer" 

ls ~/Desktop

if [ "$?" = "0" ];then
    echo "there is file"
else
    echo "there is nothing"
fi