#!/bin/bash

#-- System stuff
./install-zsh.sh
./install-stow.sh

#-- Dev stuff
#./install-asdf.sh
#./install-nodejs.sh
#./install-ruby.sh
#./install-postgresql.sh
./install-bun.sh
./install-yarn.sh

#-- Apps
./install-brave.sh
./install-syncthing.sh
./install-keepass.sh

##### TODO
# veracrypt
# imagemagick
# yarn?
# firebase tools

#-- Set default app(s)
xdg-settings set default-web-browser brave-browser.desktop
#--- Terminal?  Ghostty is default in Omarchy 3.3 so no need

./install-dotfiles.sh
./hyprland-overrides/install-hyprland-overrides.sh

./set-shell.sh
