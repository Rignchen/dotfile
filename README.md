This repository is a place to store my dotfiles, it's use to keep track of my configuration files and to make it easier to setup a new machine.

## Pre-installation
First installx [git](https://git-scm.com/) and [GNU Stow](https://www.gnu.org/software/stow/).
```bash
sudo depot i git
sudo depot i stow
```

## Installation
Then clone the repository and run the install script.
```bash
git clone git@github.com:Rignchen/dotfiles.git ~ /dotfiles
cd ~/dotfiles
stow .
```

## Dependencies
Some of the configs require some additional programs to work
### Vim
The vim config file require the plugin manager ``Plug`` to be installed in order to install plugins
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
There's the fzf plugin for vim wich require the fzf program to be installed
```bash
sudo depot i fzf
```
### Neovim
There's the fzf plugin for neovim wich require the fzf program to be installed
```bash
sudo depot i fzf
```
### Tmux
The tmux config file require the use of a plugin manager ``tpm``
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
The tmux config is setup to force the use of zsh, that way I can set tmux as my default shell
```bash
sudo depot i zsh
```
### Zsh
The zsh config file require you to install the plusin manager ``zap``
```
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 --keep
```
The config also use `oh my posh` for the visual theme
```bash
curl -s https://ohmyposh.dev/install.sh | bash -s
```
The history is stored using `atuin`
```bash
sudo depot i atuin
```
### Hyprland
Hyprland has a few dependencies, you need to install them
```bash
sudo depot i kitty nautilus fuzzel firefox wlogout vim hypridle
```
### Wlogout
Wlogout uses  swaylock effects as the lockscreen, you need to install it
```bash
sudo depot i  swaylock-effects
```

## Recommendations
### Fonts
I recommend installing the `nerd-font` package for the `JetBrainsMono` font in order to have all the icons working
### Root access
If you have root access you may want to use the vim config when logged in as root\
Be aware that any user with root access will then have the same vim config as you
```bash
sudo ln -s ~/.vimrc ~/.vim /root/
```

## Credits
Some part of the configuration was not made by me (mostly visual configurations)

- [Fuzzel](https://github.com/catppuccin/fuzzel "The fuzzel theme comes from catppuccin's repository")
- [Oh my posh](https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/mojada.omp.json "The oh-my-posh theme was based on the mojada theme")
- [Waybar](https://github.com/sameemul-haque/dotfiles "The waybar configuration was based on sameemul-haque's one")
- [Kanata](https://github.com/https://github.com/dreamsofcode-io/home-row-mods "The kanata theme is the same as dream of code's one except addapted for non us keyboards")

