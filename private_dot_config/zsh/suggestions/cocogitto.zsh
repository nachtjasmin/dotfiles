# Autocompletion for cocogitto
#
if [ $commands[cog] ]; then
  source <(cocogitto generate-completions zsh)
fi
