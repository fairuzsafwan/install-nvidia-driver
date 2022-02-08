#!/usr/bin/env bash

recommended=$(ubuntu-drivers devices | grep 'recommended')
echo $recommended

# Set comma as delimiter
IFS='-'

#Read the split words into an array based on comma delimiter
read -ra splittedWord <<< "$recommended"

#pipe splittedWord to version
version=${splittedWord[2]}

#Validate if version is integer
if ! [ "$version" -eq "$version" ] 2> /dev/null
then
    echo "Sorry integers only"
else
     echo "Version validated!"
fi
