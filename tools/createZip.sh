#!/bin/bash

xls="19.xls"
solution="Solution.pdf"
task="Task.pdf"

cd ..
dir=$(pwd)
cd ..
if [ -f inf.zip ]; then
  rm inf.zip
fi
cd "$dir"

if [ ! -f $xls ]; then
	echo "$xls not found"
	read -n 1
	exit
fi

if [ ! -f $solution ]; then
	echo "$solution not found"
	read -n 1
	exit
fi

if [ ! -f $task ]; then
	echo "$task not found"
	read -n 1
	exit
fi

zip "inf.zip" $xls $solution $task
