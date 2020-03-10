#!/bin/bash


check_step(){
  which -s $1
  if [[ $? != 0 ]] ; then
    echo "some problem installing $1 :-(" 
    exit 1
  fi
}

check_step "pippo"
echo "ciao"