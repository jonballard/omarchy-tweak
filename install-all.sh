#!/bin/bash

#--- Dev stuff
./install-bun.sh
./install-yarn.sh
#./install-ruby.sh
#./install-postgresql.sh

#--- Apps
./install-brave.sh
./install-syncthing.sh
./install-keepass.sh

##### TODO
# veracrypt
# firebase tools

#--- Set default app(s)
xdg-settings set default-web-browser brave-browser.desktop
#--- Terminal?  Ghostty is default in Omarchy 3.3 so no need

#./install-dotfiles.sh
./hyprland-overrides/install-hyprland-overrides.sh

starship preset gruvbox-rainbow -o ~/.config/starship.toml

#--- Zsh
#./set-shell.sh

#--- TODO: print out Done
#--- TODO: print out SSH key / github instructions
