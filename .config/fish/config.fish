
# export
export "EDITOR=vim"

# alias
alias "cls=clear && fastfetch"
alias "Tconfig=$EDITOR ~/.config/fish/config.fish"
alias "Thistory=$EDITOR ~/.config/fish/fish_history"

# execution
zoxide init fish | source
cls
