#!/bin/bash
myvar="Hi this is raksihihj"
echo "Length of character is ${#myvar}"
echo  "Uppercase is......... ${myvar^^}"
echo "Lowercase is .........${myvar,,}"
# to replave the stroing
newVar=${myvar/is/ranjith}
echo $newVar
