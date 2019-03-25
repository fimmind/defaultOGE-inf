.PHONY: zip clean reload
.SILENT: reload
.ONESHELL: reload
SHELL:=/bin/bash

zip: 19.xls Solution.pdf Task.pdf 20.2.png
	zip inf.zip $^

clean: 
	latexmk -c

reload:
	echo "do you realy want to delete all your work? (y/n)"
	read answer
	if [[ $$answer = "y" ]]
	then
		rm -rf ./.[^.]*
		rm -rf ./*
		git clone https://github.com/fimmind/defaultOGE-inf
		mv ./defaultOGE-inf/* ./
		mv ./defaultOGE-inf/.[^.]* ./
		rm -rf defaultOGE-inf
	fi

Solution.tex:
	pdflatex Solution.tex

20.2.cpp:
	g++ 20.2.cpp -o 20.2
