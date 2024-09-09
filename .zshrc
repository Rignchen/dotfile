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

# --- End ---
compinit
eval "$(zoxide init zsh)"
cls

