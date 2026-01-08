# omarchy-tweak
My preferred additional setup for a fresh [Omarchy](https://github.com/basecamp/omarchy) install.

Loosely based on Typecraft's [omarchy-supplement](https://github.com/typecraft-dev/omarchy-supplement),
but hyprland overrides are managed a bit differently so you see them when using Menu > Setup > Config > XXXX.

Clone it maybe to ```$HOME/omarchy-tweak``` and run from there.

## Notable Changes

* Assumes low-res 1080p display
* Caps Lock mapped to Esc
* Pause key mapped to Compose
* Brave installed and set as default browser
* Keepass installed and set to SUPER SHIFT SLASH instead of 1Password

Initially this project would install Zsh and set it as the default shell but Omarchy has such a
nice Bash setup (zoxide, fzf, starship) that we'll run with that for a while and see if we miss Zsh at all.

## TODO

* SSH keygen script
* Uninstall unused apps?  1password, ...
* Ghostty setup?
