#!/bin/bash
echo "do you realy want to delete all your work? (y/n)"
read answer
if [[ $answer = "y" ]]; then
    cd ../../
    rm -rf defaultOGE-inf
    git clone https://github.com/fimmind/defaultOGE-inf
fi
