# case-insensitive auto-complete matches, but prefer exact matches
# Solution by Adaephon: https://stackoverflow.com/a/24237590/6565273
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
