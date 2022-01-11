# To see the key combo you want to use just do:
# cat > /dev/null
# And press it
#
# zle -al for options

bindkey '^A' beginning-of-line    # HOME to beginning of line
bindkey '^E' end-of-line          # END to end of line
bindkey '^K' kill-whole-line      # ctrl + k for removing whole line
bindkey '^[[C' autosuggest-accept # right key to accept
