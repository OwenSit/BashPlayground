# asking user input 
echo "what is your name: "
read name 
echo "Hello, $name!" 
echo "Press any key to continue..."
read -n 1

# print system command output
echo "You are running" $(lsb_release -sd) "with Linux Kernel" $(uname -r)

# let get some integer vars
a=2
b=5
c=$((a*b))
echo $c
let "a+=1"
echo $a

# umm, string concatenation
d="hello "
d+="world"
d=${d}", this is owen!"
echo $d

# let play a game with sub-string manipulation
str=abcdefghij
echo "now printing the first five chars: ${str:0:5}"
echo "now printing the last three chars: ${str: -3}"
echo "2 chars long from the second chars: ${str:1:2}"
echo "the string is ${#str } chars long"