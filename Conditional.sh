#!/bin/bash
# # let's give our user a menu
# echo "Howdy! What would you like to have today? "
# echo "1. Have a beer."
# echo "2. Go to work."
# read choice
# echo

# # NON-ARITHMETIC-COMPARISON--now we bring up our if-else statement
# # use angle bracket 
# if [[ $choice == 1 ]]; then
# 	echo "Excellent choice!"
# elif [[ $choice == 2 ]]; then
# 	echo "Eh boring!"
# else
# 	echo "Hmm what do you want now?"
# fi

# # example 2
# echo "Hey, How about you give me two numbers?"
# echo "num1:"
# read num1
# echo "num2:"
# read num2
# echo "Excellent!"
# echo
# echo "Now let me compare them for you :)"

# # ARITHMETIC COMPARISON--start the if-else statement
# # pay close attention to the format, using parantheses
# if (( $num1 > $num2 )); then
# 	echo $num1 "is greater than" $num2.
# elif (( $num1 < $num2 )); then
# 	echo $num1 "is smaller than" $num2.
# else
# 	echo $num1 "is equal to" $num2.
# fi
# echo
# echo "see you!"

# check if the file exists
echo "what file would you want to check? (please provide with full name) "
read file_name
echo "now checking" $file_name "for you..."
sleep 1
# if-else statement starts here
if [[ -f $file_name ]]; then
	echo "found file" $file_name
	echo "the file is located under" $(pwd)
else
	echo "oops, no such file named" $file_name
	echo "do you mean the following files?" 
	echo $(ls *$file_name*)
fi
