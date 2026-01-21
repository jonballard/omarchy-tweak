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
* Set up syncthing, via the [web console](http://127.0.0.1:8384/)
* LazyVim mod - Add the following line to ````~/.config/nvim/lua/config/autocmds.lua````: ```vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")```
* Setup printer ??? what is best option here?  Tried ```system-config-printer``` and a PPD and executable from (https://github.com/bvanheu/brother/tree/master/HL2270DW) with no luck


## TODO

* firebase CLI tools
* ```.bashrc``` additions
* ```~/.config/ghostty/config``` set font to 11
* Waybar height tweak (search and replace ```"height": 26,``` in ```~/.config/waybar/config.jsonc```)
* Waybar time/date display?
* Waybar extensions like weather?
* Uninstall unused apps?  1password, ...

