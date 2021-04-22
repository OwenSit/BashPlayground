#! /bin/bash
# # in this file we will be talking about loops in bash

# # for loops will goes through a list 
# # let start with printing every txt file
# echo "FOR LOOPS"
# for i in $(ls ./ | grep txt); do
# 	echo $i
# done

# # simply make it a file searcher?
# echo "Hi, what type of file that you are looking for? {provide extension)"
# read extension
# echo "Trying our best to search..." # I knew this is lame...
# sleep 1
# echo "and here is what we found:"
# for i in $( ls ./ | grep $extension );do
# 	echo $i
# done


# now let's get into the while loops
echo "WHILE LOOPS"
count=0
while [[ $count -lt 5 ]]; do # -lt stands for less than
	echo "count is" $count
	let count+=1
done
echo

# how about until loops? similar to do..while in C++
echo "UNTIL LOOPS"
count=0
until [[ count -ge 5 ]]; do
	echo "count is" $count
	let count=count+1
done
echo

# more fun!
echo "INFINATE LOOP UNTIL IT BREAKS!"
let count=0
while [[ 1 ]]; do
	echo "loop" $count
	echo "whould you want to break out the INFINATE LOOP?"
	read choice
	if [[ $choice = "y" ]]; then # =, == are for string comparison, whereas -eq is for numeric ones
		break											 # = is better than == because = is a sh thing 
	fi
	let count+=1
done




