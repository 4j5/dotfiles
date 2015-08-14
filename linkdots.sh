#!/bin/bash

#Vars
dotDir=~/dotfiles
oldDir=~/dotfiles_old
files="aliases bashrc clusterssh tmux.conf tmuxinator vim vimrc zprezto"

#Backup

if [ ! -d $oldDir ] ; then
	echo "Creating backup directory in $oldDir"
	mkdir -p $oldDir
	echo "...done"
fi

echo "changing to dot dir"
cd $dotDir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
echo "Moving any existing dotfiles from ~ to $oldDir"
for file in $files; do
    mv ~/.$file $oldDir/
    echo "Creating symlink to $file in home directory."
    ln -s $dotDir/.$file ~/.$file
done
