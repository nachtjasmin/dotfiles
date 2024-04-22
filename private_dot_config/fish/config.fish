#!/usr/bin/env fish

# PATH
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

# Aliases
alias cat bat
alias grep rg
alias mkdir 'mkdir -p'
alias dd 'dd status=progress'
alias ip 'ip --color=auto'
alias cz chezmoi

# Abbreviations
abbr nah 'git nah'
abbr glog 'git slog'

# List directory contents
alias l 'ls -lah'
alias ll 'ls -lh'
abbr --add dotdot --regex '^\.\.+$' --function multicd
