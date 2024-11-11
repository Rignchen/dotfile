# --- COMPUTER SPECIFIC SETTINGS ---
source $HOME/.config/zsh/computer.zsh

# --- TMUX ---
if [ -z "$TMUX" ]; then
	tmux attach || tmux
	exit
fi

# --- Load Plugin Manager ---
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# --- Load config files ---
plug "$HOME/.config/zsh/env.zsh"
plug "$HOME/.config/zsh/plugins.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/fix.zsh"

# --- Config ---
setopt correct

# --- End ---
autoload -Uz compinit && compinit
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/$OMP_CONFIG)"
eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
eval "$(worm_hole init zsh --add wha)"
cls

