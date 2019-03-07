#!/bin/bash

cd ..

latexmk -c
rm *.synctex.gz
