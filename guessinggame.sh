count=$(ls -1 | wc -1)

function correct_guess {
    if [[ $5 -lt $6 ]]
    then
	echo "too low"
    elif [[ $5 -gt $6 ]]
    then
	echo "too high"
    else
	echo ""
	echo "Congratulations!  You guessed correctly!"
    fi
}

while [[ $count -ne $guess ]]
do

    read -p "Guess how many files are in the directory? " guess
    echo $(correct_guess $guess $count)
    echo ""
done