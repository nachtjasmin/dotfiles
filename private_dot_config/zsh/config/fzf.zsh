# fzf's command
export FZF_DEFAULT_COMMAND="fd --type f --follow --exclude 'node_modules' --exclude .git --strip-cwd-prefix"

# CTRL-T's command
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# ALT-C's command
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

export FZF_DEFAULT_OPTS="
--layout=reverse
--info=inline
--height=90%
--multi
--prompt='∼ '
--pointer='▶'
--marker='✓'
--bind '?:toggle-preview'
"


FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--preview-window=bottom:80%
--height '80%'
"
