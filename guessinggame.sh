#!/usr/bin/env bash

function ask {
        echo "Enter the number of files in the directory:"
        read guess
    files=$(ls -1 | wc -l)
}    
    
ask

while [[ $guess -ne $files ]]
do
        if [[ $guess -lt $files ]]
        then
	            echo "too low"
        else
	            echo "too high"
        fi
        ask
done

echo "Congratulations!  You guessed the correct number of files!  Here, you can find the list of files:"
echo "" && ls -1