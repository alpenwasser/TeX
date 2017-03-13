#!/usr/bin/env sh

gummi cicuta.tex
echo "Press Return Key to Continue with LyX"
read
lyx cicuta.lyx
echo "Press Return Key to Continue with gvim"
read
cp hw.tex demo.tex
gvim -U demo_gvimrc  demo.tex
