This repository is a place to store my dotfiles, it's use to keep track of my configuration files and to make it easier to setup a new machine.

## Installation
First installx [git](https://git-scm.com/) and [GNU Stow](https://www.gnu.org/software/stow/).
### Arch Linux
```bash
sudo pacman -S git
sudo pacman -S stow
```
### Ubuntu
```bash
sudo apt install git
sudo apt install stow
```
### Fedora
```bash
sudo dnf install git
sudo dnf install stow
```

Then clone the repository and run the install script.
```bash
git clone git@github.com:Rignchen/dotfiles.git
cd dotfiles
stow .
```
