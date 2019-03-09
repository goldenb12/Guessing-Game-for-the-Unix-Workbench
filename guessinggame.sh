#!/usr/bin/env bash

function ask {
        echo "Enter the number of files in the directory:"
        read guess
    files=$(ls -1 | wc -1)
}    
    
ask

while [[ $files -ne $guess ]]
do
        if [[ $files -lt $guess ]]
        then
	            echo "too low"
        else
	            echo "too high"
        fi
        ask
done

echo "Congratulations!  You guessed correct number of files!  Here, you can find the list of files:"
echo "" && ls -1