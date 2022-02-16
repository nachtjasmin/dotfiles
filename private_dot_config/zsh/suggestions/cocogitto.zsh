# Autocompletion for cocogitto
#
if [ $commands[cog] ]; then
  source <(cog generate-completions zsh)
fi
