# Fix some bugs in zsh

## Simple
# delete
bindkey "^[[3~" delete-char
# home
bindkey "^[[1~" beginning-of-line
# end
bindkey "^[[4~" end-of-line

## Ctrl
# ctrl+left
bindkey "^[[1;5C" forward-word
# ctrl+right
bindkey "^[[1;5D" backward-word
# ctrl+backspace
bindkey "^H" backward-kill-word
# ctrl+delete
bindkey "^[[3;5~" kill-word

