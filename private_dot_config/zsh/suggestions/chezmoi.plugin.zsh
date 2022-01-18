# Autocompletion for chezmoi
#
if [ $commands[chezmoi] ]; then
  source <(chezmoi completion zsh)
fi
