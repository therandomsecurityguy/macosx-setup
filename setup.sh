#!/bin/bash

function uninstall {

echo "WARNING : This will remove homebrew and all applications installed through it"
echo -n "are you sure you want to do that? [y/n] : "
read approval

if [ $approval == "y" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
    exit 0
else
  echo "Cancelling uninstall"
  exit 0
fi

}

if [ $1 == "uninstall" ]; then
    uninstall
fi

echo "==========================================="
echo "Installing Ansible and dependencies"
echo "==========================================="

sudo easy_install pip
sudo easy_install ansible

installdir="/tmp/ansible-macosx"
mkdir $installdir

git clone https://github.com/therandomsecurityguy/macosx-setup.git $installdir 
if [ ! -d $installdir ]; then
    echo "failed to find ansible-macosx."
    echo "git cloned failed"
    exit 1
else
    cd $installdir 
    ansible-playbook -i ./hosts playbook.yml --verbose
fi

echo "cleaning up..."

rm -Rfv /tmp/$installdir

echo "Installation complete!"

exit 0
