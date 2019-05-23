#!/bin/bash





maxthrows=10
throws=0
one=0
two=0
three=0
four=0
five=0
six=0



function randomcomp { 
random=$((1 + RANDOM % 6))

 }

function update_count {
    case "$random" in
    1) let "one++" ;;

    2) let "two += 1" ;;

    3) let "three += 1" ;;

    4) let "four += 1" ;;

    5) let "five += 1" ;;

    6) let "six += 1" ;;

    esac 

}

function main {
    randomcomp
    update_count
    let "throws++"
}


until [ "$throws" -eq "$maxthrows" ]
do 
main 
done 

echo "One: $one" 
echo "Two: $two"
echo "Three: $three"
echo "four: $four"
echo "five: $five"
echo "six: $six"
