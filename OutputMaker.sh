#!/bin/bash

clear
echo "+-----------------------------------+"
echo "|╔═╗╦ ╦╔╦╗╔═╗╦ ╦╔╦╗  ╔╦╗╔═╗╦╔═╔═╗╦═╗|"
echo "|║ ║║ ║ ║ ╠═╝║ ║ ║───║║║╠═╣╠╩╗║╣ ╠╦╝|"
echo "|╚═╝╚═╝ ╩ ╩  ╚═╝ ╩   ╩ ╩╩ ╩╩ ╩╚═╝╩╚═|"
echo "+-----------------------------------+"
echo "|------C/C++ Output File Maker------|"
echo "+-----------------------------------+"
echo -n "Select Language (C or C++) : "
read lang

if [ "$lang" == "C" ]
then
    echo -n "Enter File Path of C File Name with extension : "
    read -e cfile
    echo -n "Enter File path of Output File with name : "
    read -e coutputfile
    gcc $cfile -o $coutputfile
    echo "Success! C Output file created."
elif [ "$lang" == "C++" ]
then
    echo -n "Enter File Path of C++ File Name with extension : "
    read -e cppfile
    echo -n "Enter File path of  Output File with name : "
    read -e cppoutputfile
    g++ $cppfile -o $cppoutputfile
    echo "Success! C++ Output file created."
else
    echo "Invalid selection! Please choose either C or C++."
fi
