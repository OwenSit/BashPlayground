#! /bin/sh

echo Hello World

declare -A AssociateArray  # array index is in named form 
declare -a NumericArray    # array index is in numeric form



function Foo(){
	LocalArray[0]="Hi" 
	LocalArray[4]="I am"
	LocalArray[10]="Owen~~"

	# read the specific item in the array
	echo "this first element in the array is: ${LocalArray[0]}" 

	# read the entire array
	echo "now I will print out the entire array: ${LocalArray[@]}" 
	echo "Nice Work!"
} 

# to call the function Foo
Foo
echo "The LocalArray is: ${LocalArray[@]}"

# to use the AssociateArray => works like a hash map?
AssociateArray[Var1]="I'm Var1"
AssociateArray[Var2]="I'm Var2"

# print the AssociateArray
echo "the element with index name of Var1 is: ${AssociateArray[Var1]}"
echo "the element with index name of Var2 is: ${AssociateArray[Var2]}"
echo "the entire AssociateArray is: ${AssociateArray[@]}"

# assign a variable
index_name="Var3"

# check if an element is in an array
if [ "${AssociateArray[$index_name]}" ]; then
	echo "Var found!"
else
	echo "Var not found!"
fi

# add string into NumericArray, empty space are appended to the end of every insertion
NumericArray[0]="Hello,"
NumericArray+=("my name is")
NumericArray+=("Owen :)")
NumericArray+=("My favourite number is:")
NumericArray+=("23")
echo "${NumericArray[@]}"

# if you want to print the output to a file, using printf from C
echo "writing output to output.txt..."
printf "%s\n" "${NumericArray[@]}" > output.txt # look for strings and separated them with new lines

# print output.txt to std output
echo "printing output.txt on screen..."
echo
cat output.txt
echo

# more ways to delcare an array?
my_array[0]="element1"
my_array[1]="element2"
echo "printing my_array:"
printf "%s\n" "${my_array[@]}"
echo

# more more ways? seems like associate array doesn't work in this way...
super_associate[Super1]="I am super 1"
super_associate[Super2]="I am super 2"
echo "now printing the super array:"
echo "${super_associate[Super2]}"
echo

# using for-loop to insert elements into array
declare -a new_array
for i in {0..10}
do 
	new_array[$i]=$i
done
echo "new_array: ${new_array[@]}"


# get the # of elements in the array and insert a new Owen
num_elements=${#new_array[@]}
new_item=11
new_array[$num_elements+1]=$new_item
echo "the new_array is: ${new_array[@]}"
