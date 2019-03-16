#!/bin/bash
echo "do you realy want to delete all your work? (y/n)"
read answer
if [[ $answer = "y" ]]; then
    cd ../
    rm -rf ./*
    git clone https://github.com/fimmind/defaultOGE-inf
    mv ./defaultOGE-inf/* ./
    rm -rf defaultOGE-inf
fi
