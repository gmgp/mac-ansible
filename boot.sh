#!/bin/bash

#
# Forked from https://github.com/sandstorm/macosx-with-ansible/blob/master/boot.sh
#

if [ "$(whoami)" == "root" ]; then
   echo "This script must NOT be run as root." 1>&2
   exit 1
fi

PYTHON_VERSION="3.8.0"

check_step(){
  which -s $1
  if [[ $? != 0 ]] ; then
    echo "some problem installing $1 :-(" 
    exit 1
  fi
}

echo "installation bootstrap script"
echo "====================="
echo ""
read -p "Continue ? [Enter]"
echo ""
echo ""

if [ ! -f "/Library/Developer/CommandLineTools/usr/bin/clang" ]; then
    echo "XCode Tools Installation"
    echo "------------------------"
    echo ""
    /usr/bin/xcode-select --install
    read -p "Continue ? [Enter]"
    echo ""
    echo ""
fi

echo "==================== BREW =="
which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing homebrew, as it was not found"
  echo "--------------------"
  # Install Homebrew
  # https://github.com/mxcl/homebrew/wiki/installation
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "complete!"
else
  echo "found homebrew, updating it"
  echo "--------------------"
  brew update
  echo "complete!"
fi
check_step "brew"


echo "==================== PYENV =="
which -s pyenv
if [[ $? != 0 ]] ; then    
    echo "pyenv installation"
    echo "--------------------"
    brew install pyenv
    echo "completed!"
    check_step pyenv
else  
    echo "pyenv present"
fi

echo "==================== PYTHON =="
which -s python
if [[ $? != 0 ]] ; then    
    echo "python ${PYTHON_VERSION} installation"
    echo "--------------------"
    pyenv install "${PYTHON_VERSION}"
    echo "completed!"
    check_step python
    check_step pip
else
    echo "python present"
fi

echo "==================== PIP =="
echo "pip upgrade"
echo "--------------------"
pip install --upgrade pip
echo "completed!"


echo "==================== ANSIBLE =="
which -s ansible
if [[ $? != 0 ]] ; then   
    echo "Ansible installation"
    echo "--------------------"
    pip install ansible
    echo "completed!"
    check_step ansible
else
    echo "ansible present"
fi

echo "==================== CUSTOMIZE =="
git clone https://github.com/gmgp/mac-ansible.git
cd mac-ansiSble
echo "mac-ansible customitation"
echo "--------------------"
echo "read playbook.yml and customyze main.yml of interesting roles"
