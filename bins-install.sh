#!/bin/sh

cd $PROJECTS
git clone https://github.com/DKunin/bin.git
ln -s $PROJECTS/bin ~/bin
cd $PROJECTS/bin
chmod +x ./*