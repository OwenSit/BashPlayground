# let's give our user a menu
echo "Howdy! What would you like to have today? "
echo "1. Have a beer."
echo "2. Go to work."
read choice
echo

# now we bring up our if-else statement
if [[ $choice == 1 ]]; then
	echo "Excellent choice!"
elif [[ $choice == 2 ]]; then
	echo "Eh boring!"
else
	echo "Hmm what do you want now?"
fi

# example 2
echo "Hey, How about you give me two numbers?"
echo "num1:"
read num1
echo "num2:"
read num2
echo "Excellent!"
echo
echo "Now let me compare them for you :)"

# start the if-else statement, pay close attention to format of comparing variables 
if (( $num1 > $num2 )); then
	echo $num1 "is greater than" $num2.
elif (( $num1 < $num2 )); then
	echo $num1 "is smaller than" $num2.
else
	echo $num1 "is equal to" $num2.
fi
echo
echo "see you!"
