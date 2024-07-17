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
### .vimrc
The vim config file require the plugin manager ``Plug`` to be installed in order to install plugins
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### .tmux.conf
The tmux config file also require the use of a plugin manager ``tpm``
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
The tmux config force set fish as the default shell (because some of my computers didn't want to use fish as default shell), to do so you need to install fish and register it as a valid shell
```bash
sudo pacman -S fish
echo $(which fish) | sudo tee -a /etc/shells
```

## Root access
If you have root access you may want to use the vim config when logged in as root\
Be aware that any user with root access will then have the same vim config as you
```bash
sudo ln -s ~/.vimrc ~/.vim /root/
```
