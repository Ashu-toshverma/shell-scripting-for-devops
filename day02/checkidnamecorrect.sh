#!/bin/bash


read -p "Enter the name: " name

function check_name(){
if [[ $name == "Aman" ]];
then	
	echo "Name is correct"
else
        echo "Name is incorrect"
fi	
}

check_name
