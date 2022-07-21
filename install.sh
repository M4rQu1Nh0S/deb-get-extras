#!/bin/bash

## Deb-get-extras install script
git clone https://github.com/M4rQu1Nh0S/deb-get-extras.git

sudo mkdir -p /etc/deb-get.d/

sudo cp -r ./deb-get-extras/01-deb-get-extras /etc/deb-get.d

printf '\n"deb-get-extras" has been installed\n'

printf '\nRunning deb-get update...\n\n'

sudo deb-get update

rm -r deb-get-extras

printf '\nDone!\n'
