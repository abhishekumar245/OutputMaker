#!/bin/bash

clear
echo "+-----------------------------------+"
echo "|╔═╗╦ ╦╔╦╗╔═╗╦ ╦╔╦╗  ╔╦╗╔═╗╦╔═╔═╗╦═╗|"
echo "|║ ║║ ║ ║ ╠═╝║ ║ ║───║║║╠═╣╠╩╗║╣ ╠╦╝|"
echo "|╚═╝╚═╝ ╩ ╩  ╚═╝ ╩   ╩ ╩╩ ╩╩ ╩╚═╝╩╚═|"
echo "+-----------------------------------+"
echo "|------C/C++ Output File Maker------|"
echo "+-----------------------------------+"
echo "|              CAUTION              |"
echo "+-----------------------------------+"
echo "|1. If the C/C++ file(s) is in the  |"
echo "|folder of the tool, just type the  |"
echo "|C/C++ file name with extension.    |"
echo "+-----------------------------------+"
echo "|2. If the C/C++ file(s) is on the  |"
echo "|another location, then type the    |"
echo "|full path along with C/C++ File    |"
echo "|name with extension.               |"
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
