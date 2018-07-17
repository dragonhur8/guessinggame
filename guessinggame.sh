#!/usr/bin/env bash
# File: guessinggame.sh

function guessingGame {
	echo "Guess how many files are in the directory: "
	read guess
	if [[ guess -gt numFiles ]]
	then
		echo "You entered a number too big"
	elif [[ numFiles -gt guess ]]
	then
		echo "You entered a number too small"
	fi
}

guess=0
numFiles=$( ls -l| wc -l)
let numFiles=$numFiles-1
while [[ $numFiles -ne  guess ]]
do
	guessingGame
done
echo "Congratulations, you guessed the number of files correctly!"
