if status is-interactive
    # Commands to run in interactive sessions can go here
end

# export
export "EDITOR=vim"

# alias
alias "cls=clear && fastfetch"
alias "Tconfig=$EDITOR ~/.config/fish/config.fish"
alias "Thistory=$EDITOR ~/.local/share/fish/fish_history"
alias "Vimrc=$EDITOR ~/.vimrc"

# execution
zoxide init fish | source
cls
