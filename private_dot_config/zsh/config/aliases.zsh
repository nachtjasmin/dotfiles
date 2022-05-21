# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias nah='git nah'
alias gitroot='cd "$(git rev-parse --show-toplevel)"'

# Chezmoi
alias cz=chezmoi

# Directories
alias ..="cd .."

# Docker
alias docker-nas='docker -H tcp://192.168.178.200:2376'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Default linux tools
alias mkdir='mkdir -p'
alias grep='rg' # ripgrep
alias dd='dd status=progress'
alias cat='bat --theme base16 --style "plain"'
alias ls='exa'
