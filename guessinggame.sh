#!/bin/bash

# Function
func_guess() {
    correct_count=$(find . -maxdepth 1 -type f | wc -l)

    inp=-1

    echo "Guess the number of files in the directory"

    while [ "$inp" -ne "$correct_count" ]
    do
     echo -n "Enter your guess: "
     read inp

     if [ "$inp" -lt "$correct_count" ]
     then
      echo "Your guess is too low. Try again"
     elif [ "$inp" -gt "$correct_count" ]
     then
      echo "Your guess is too high. Try again"
     fi
    done

    echo "Congratulations. Number of files: $correct_count"
}

func_guess
