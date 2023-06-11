#!/bin/bash

# Main while loop
while true
do
    # Prompt for first number
    echo "Please enter first number:"
    read num1

    # Prompt for second number
    echo "Enter second number:"
    read num2

    echo "Select operation: [1 -> +] [2 -> -] [3 -> *] [4 -> /]"
    read op

    echo "Calculating..."
    
    # Validate operation and perform calculation
    if [ $op = "1" ]
    then
        ans=$(($num1 + $num2))
        echo "Answer is $ans"
    elif [ $op = "2" ]
    then
        ans=$(($num1 - $num2))
        echo "Answer is $ans"
    elif [ $op = "3" ]
    then
        ans=$(($num1 * $num2))
        echo $ans
    elif [ $op = "4" ]
    then
        ans=$(($num1 / $num2))
        echo "Answer is $ans"
    else
        echo "Invalid operation selected. Halting."
        return false
    fi

    echo "Run again (y/n)?"
    read run_again
    if [ $run_again != "y" ]
    then
        echo "Adios"
        break
    fi
done



