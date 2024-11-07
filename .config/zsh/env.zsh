# config for zsh
export ZAP_GIT_PREFIX="git@github.com:"
export OMP_CONFIG="theme.toml"

# env
export OS="$(cat /etc/os-release | grep "^ID=" | cut --delimiter "=" --fields 2)"
export PATH="$PATH:$HOME/.local/bin:$HOME/.local/share/JetBrains/Toolbox/scripts:$HOME/cmd"
export EDITOR='nvim'
