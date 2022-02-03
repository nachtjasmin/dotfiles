# Autocompletion for sheldon
#
if [ $commands[sheldon] ]; then
  source <(sheldon completions --shell zsh)
fi
