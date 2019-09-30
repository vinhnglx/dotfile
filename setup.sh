#!/bin/bash

homedir=~
pwd=$(pwd)
files=(.tmux.conf .vimrc)

link_dotfile()
{
  ln -s $pwd/$1 $homedir/$1
}

ask_to_replace ()
{
  read -p "Override y/n? " yn
  if [ $yn == "Y" ] || [ $yn == "y" ]
  then
    rm $homedir/$1
    link_dotfile $1
  fi
}

main()
{
  for dotfile in "${files[@]}"
  do
    if [ -e $homedir/$dotfile ]
    then
      echo "$dotfile is exist"
      ask_to_replace $dotfile
    else
      link_dotfile $dotfile
    fi
  done
}

main
