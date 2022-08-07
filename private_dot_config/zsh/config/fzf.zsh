# fzf's command
export FZF_DEFAULT_COMMAND="fd --type f --follow --exclude 'node_modules'"

# CTRL-T's command
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# ALT-C's command
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=90%
--preview-window=right:70%
--multi
--prompt='∼ '
--pointer='▶'
--marker='✓'
--bind '?:toggle-preview'
"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
--color=fg:#4ca5ed,bg:#1b2b34,hl:#4cdb33
--color=fg+:#00ddff,bg+:#343d46,hl+:#2bff05
--color=info:#fac863,prompt:#07ed35,pointer:#07ed35
--color=marker:#5fb3b3,spinner:#07ed35,header:#1fdbce
"

FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--preview-window=bottom:80%
--height '80%'
"
