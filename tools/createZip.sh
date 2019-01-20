#!/bin/bash

xls="19.xls"
exe="20.2.exe"
solution="Solution.pdf"
task="Task.pdf"

cd ..

dir=$(pwd)

cd ..
rm inf.zip
cd "$dir"

if [ ! -f $xls ]; then
	echo "$xls not found"
	read -n 1
	exit
fi

if [ ! -f $exe ]; then
	echo "$exe not found"
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

zip "inf.zip" $exe $xls $solution $task
mv inf.zip ..