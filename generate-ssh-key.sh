#!/bin/bash

echo ">>> Choose the default filename of ~/.ssh/id_ed25519"
echo "-----"
ssh-keygen -t ed25519 -C "$1"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "-----"
echo ">>> Now add the public key to your github (under Settings)"
echo ">>> Contents of ~/.ssh/id_ed25519.pub dumped here to copy:"
cat ~/.ssh/id_ed25519.pub

