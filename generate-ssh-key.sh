#!/bin/bash

echo "Choose the default filename"
ssh-keygen -t ed25519 -C "$1"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Now add the public key (contents of ~/.ssh/id_ed25519.pub) to your github (under Settings)"
