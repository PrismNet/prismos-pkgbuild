#!/bin/bash

echo
tput setaf 3
echo "################################################################"
echo "################### Start"
echo "################################################################"
tput sgr0
echo
project=$(basename `pwd`)
githubdir="PrismNet"
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/$githubdir/$project"
echo "-----------------------------------------------------------------------------"

git config pull.rebase false
git config push.default simple
sudo git config --system core.editor nano
git remote set-url origin git@github.com:$githubdir/$project
echo
tput setaf 3
echo "################################################################"
echo "################### End"
echo "################################################################"
tput sgr0
echo
