#! /bin/bash
# we will be talking about function over here

# let's create our first function
function foo1
{
	echo "yoo, I am foo1!"
}

# another way to write a funciton
foo2 ()
{
	# input variables into a function
	echo "Foo2 Function" $1 $2 # the number represent the order of the parameters 
	echo "All input variables in Foo2" $*
	echo
}

# calling the functions
foo1
foo2 Hi there everyone 2 # calling foo2 and pass in the arguments

# what if we want to return some valuables?
# how about the variable that I pass into the function
foo3 ()
{
	echo "the variable you passed in to foo3 is" $1 $2
	echo "now I am trying to return them"
	return $1
}

foo3 13 14
Return_val=$?
echo "the return variable I catch is" $Return_val


# return local variable
foo4 ()
{
	local num=$1
	let num-=1
	return $num
}

foo4 10
var2=$?
echo "the variable return is" $var2

echo "passing value 257 into foo4"
foo4 257
var3=$? # theoretically should be 256, however, it is turned into 0 in the std output
echo "the value returned is" $var3
echo $num # can not return local variable in the main function


# for some reason, the local variable returned in the function can not be larger than 255
# if we can the global variable
foo5 ()
{
	# declare global variable here
	glo_var=$1
	let glo_var+=1
	echo "printed from funciton foo5, glo_var is" $glo_var
	return $glo_var
}

# let's find out
foo5 256 # pass in value 257 into foo5
var4=$?
# wait for magic?
echo "printed from main, the returned value is" $var4 # if we print the returned value, it whould overflow
# what if we print out the global var $glo_var
echo "print from main, the \$glo_var is" $glo_var
