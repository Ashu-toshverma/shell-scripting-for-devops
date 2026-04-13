#!/bin/bash

create_directory(){
	mkdir demo
}

if ! create_directory;then
	echo "The code is being exited beacause it is already existed"
	exit 1
fi

echo "this hould bot work as code is interupted"
