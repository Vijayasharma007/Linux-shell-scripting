#!/bin/bash

# Secret agent application
            #rules 
#The first character of the name should be "s"
#The last character of favourite actor should be "a"
#The lucky number should be 7
#The number of characters in his favourite game should be >=6

#If the above condition are satified then user is valid secret agent and share information about our next operation, otherwise just send .your information is invalid, please provide valid data

echo " SECRET AGENT APPLICATION "
echo " ......................... "

read -p "Enter your name:" name
first_char_name=$(echo -n $name | cut -c 1)
if [ $first_char_name != "s" ]; then
echo "Hello $name, your information is invalid, please provide valid data:"
exit 1
fi

read -p "Enter your favourite actor:" actor
len=$(echo -n $actor | wc -c)
last_char_actor=$(echo -n $actor | cut -c $len)
if [ $last_char_actor != "a" ]; then
    echo "Hello $name, your information is invalid, please provide valid data:"
exit 1
fi

read -p "Enter your lucky number:" lucky
if [ $lucky -ne 7 ]; then
     echo "Hello $name, your information is invalid, please provide valid data:"
exit 1
fi

read -p "Enter your favourite game:" game
no_of_characters_game=$(echo -n $dish | wc -c)
if [ $no_of_characters_game -lt 6 ]; then
    echo "Hello $name, your information is invalid, please provide valid data:"
exit 1
fi

echo "Thank you for your valid data & information. WELLCOME !"

