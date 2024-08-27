This repository is a place to store my dotfiles, it's use to keep track of my configuration files and to make it easier to setup a new machine.

## Pre-installation
First installx [git](https://git-scm.com/) and [GNU Stow](https://www.gnu.org/software/stow/).
```bash
sudo pacman -S git
sudo pacman -S stow
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
sudo pacman -S fzf
```
### Tmux
The tmux config file require the use of a plugin manager ``tpm``
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
The tmux config is setup to force the use of zsh, that way I can set tmux as my default shell
```bash
sudo pacman -S zsh
```
### Zsh
The zsh config file require you to install the plusin manager ``oh-my-zsh``
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Some of the plugins needs to be manualy downloaded
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```
Oh my zsh override the zshrc file
```bash
rm ~/.zshrc
mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
```
### Hyprland
Hyprland has a few dependencies, you need to install them
```bash
sudo pacman -S kitty nautilus fuzzel firefox wlogout vim
```
### Wlogout
Wlogout uses swaylock as the lockscreen, you need to install it
```bash
sudo pacman -S swaylock
```

## Root access
If you have root access you may want to use the vim config when logged in as root\
Be aware that any user with root access will then have the same vim config as you
```bash
sudo ln -s ~/.vimrc ~/.vim /root/
```
