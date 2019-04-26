#!/bin/bash
name=Diego
echo name: $name
echo "name: ${name}like pc"
fullName="Diego Martinez"
echo full Name: $fullName
age=24
age=$(expr $age + 1)
echo age: $age #age has empty value