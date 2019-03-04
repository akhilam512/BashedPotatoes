#!/bin/bash

# checking if Figlet is installed
output=$(figlet -v)
while read -r line; do
	if [[ !($line == *"Copyright"*) ]]; then
		sudo apt-get install figlet
	fi

	break

done <<< "$output"

	

random=$((1 + RANDOM%5))

if [ 1 -eq $random ]
then
	figlet -w 40 "KEEP MOVING"

elif [ 2 -eq $random ]
then
	figlet -w 40 "Goodd   Job."

elif [ 3 -eq $random ] 
then
	figlet -w 40 "THERES  NO  TOMORROW"

elif [ 4 -eq $random ]
then
	figlet -w 42 "YOU  CAN  FUCKING  DO  IT"

elif [ 5 -eq $random ]
then 
	figlet -w 40 "DAMN  GOOD  JOB!"
 
fi
