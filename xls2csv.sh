#!/bin/bash

echo "Checking for brew to be installed"
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Congrats. It's installed ;)"
fi

echo "Checking for extension gnumeric"
which -s gnumeric
if [[ $? != 0 ]] ; then
    # Install gnumeric
    brew install gnumeric
else
    echo "Congrats. It's installed ;)"
fi

echo ""
echo "Please enter the file name. You can also only drag&drop it to the terminal! [followed by ENTER]"
read filename
echo "Please tell me, how the new file has to be named. You can also tell me the path, where it has to be stored. [followed by ENTER]"
read new_filename
echo "Alright, let's go!"
ssconvert $filename $new_filename
echo "Successful operation!"
open .
