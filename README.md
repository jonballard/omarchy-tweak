# omarchy-tweak
My preferred additional setup for a fresh [Omarchy](https://github.com/basecamp/omarchy) install.

Loosely based on Typecraft's [omarchy-supplement](https://github.com/typecraft-dev/omarchy-supplement),
but hyprland overrides are managed a bit differently so you see them when using Menu > Setup > Config > XXXX.


## Notable Changes

* Assumes low-res 1080p display
* Caps Lock mapped to Esc
* Pause key mapped to Compose
* Brave installed and set as default browser
* Keepass installed and set to SUPER SHIFT SLASH instead of 1Password

Initially this project would install Zsh and set it as the default shell but Omarchy has such a
nice Bash setup (zoxide, fzf, starship) that we'll run with that for a while and see if we miss Zsh at all.


## Usage

* Install Omarchy 3.3+
* Clone this repo, maybe to ```$HOME/omarchy-tweak```
* Run ```./install-all.sh```
* For [github SSH authentication](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent),
  run ```./generate-ssh-key.sh youremail@wherever.com```
  and [add that key to your github account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).


## TODO

* firebase CLI tools
* ```.bashrc``` additions
* Waybar height tweak (search and replace ```"height": 26,``` in ```~/.config/waybar/config.jsonc```)
* Uninstall unused apps?  1password, ...
* Ghostty setup?
