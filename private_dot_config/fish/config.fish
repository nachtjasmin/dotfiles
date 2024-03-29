#!/usr/bin/env fish
starship init fish | source

# Disable syntax highlighting, except for errors
fish_config theme choose None
set fish_color_error red --bold

# PATH
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/go/bin

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

# Helix as primary editor, always accessible via hx.
if command -q helix
    alias hx helix
    set -gx EDITOR helix
else
    set -gx EDITOR hx
end

# List directory contents
alias l 'ls -lah'
alias ll 'ls -lh'

# Directory helpers
function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

# SSH kitten if inside kitty session
if test "$TERM" = xterm-kitty
    alias ssh "kitty +kitten ssh"
end

if not status is-interactive
    return
end

# Exports
command -q eza; and alias ls 'eza -lhT --group-directories-first --level 1'
command -q direnv; and direnv hook fish | source
command -q fnm; and fnm env --use-on-cd | source
