#!/bin/bash

ftype=".*"
echo "Enter filetype, if any (default - all .*)"
read ftype

echo "Enter text to be searched"
read text

echo "Hope you are in your working directory....\n"
echo "-----------------------------------------"

find . -name "*$ftype" -exec grep -i "$text" {} \; -print

echo "-----------------------------------------"

