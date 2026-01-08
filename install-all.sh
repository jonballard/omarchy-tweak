#!/bin/bash

#--- Dev stuff
./install-bun.sh
./install-yarn.sh
#./install-ruby.sh
#./install-postgresql.sh
##### TODO
# firebase tools

#--- Apps
./install-brave.sh
./install-syncthing.sh
./install-keepass.sh
./install-veracrypt.sh

#--- Set default app(s)
xdg-settings set default-web-browser brave-browser.desktop

#./install-dotfiles.sh
./hyprland-overrides/install-hyprland-overrides.sh

starship preset gruvbox-rainbow -o ~/.config/starship.toml

echo ""
echo ">>> Done!"
echo ">>> Run ./generate-ssh-key.sh to set up github authentication"
