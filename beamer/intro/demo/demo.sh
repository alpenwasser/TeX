#!/usr/bin/env sh

gummi cicuta.tex

echo "Press Return key to continue with LyX"
read
lyx cicuta.lyx

#echo "Press Return key to continue with texmaker"
#read
#texmaker cicuta.tex

#echo "Press Return key to continue with texstudio"
#read
#texstudio cicuta.tex

echo "Press Return key to continue with gvim"
read
cp hw.tex demo.tex
gvim -U demo_gvimrc  demo.tex
