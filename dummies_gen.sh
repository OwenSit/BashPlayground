#! /bin/bash
# this script is used to generate dummy files for software testing
version=0.1

# Ask user for filetype they want to generate
echo "Howdy, welcome to the Dummy Gen v" $version.
echo "What type of file you want to generate? (provide the extension)"
read extension
echo "How many of these file you would like to have?"
read num_files

echo "Got it, we will be generating $num_files $extension files..."
sleep 1

# let's start the game!
for (( i=1; i<=num_files; i++ ))
do
	$(touch file$i.$extension)
done

echo "Files have been generated, please verify it"


