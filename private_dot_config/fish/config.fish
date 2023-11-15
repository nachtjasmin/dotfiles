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
alias ls 'eza --hyperlink'
alias ip 'ip --color=auto'
alias cz chezmoi

# Abbreviations
abbr nah 'git nah'

# Consequent naming for helix editor (it's hx on fedora, helix on arch)
command -q helix; and alias hx helix

# List directory contents
alias l 'ls -lah'
alias ll 'ls -lh'

# Directory helpers
function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

# SSH kitten if inside kitty session
if test "$TERM" = "xterm-kitty"
	alias ssh "kitty +kitten ssh"
end

# Exports
set -gx EDITOR helix

# Zoxide
set -Ux _ZO_FZF_OPTS "--no-sort --height=30% --exit-0 --select-1 --bind=ctrl-z:ignore"

if not status is-interactive
	return
end

if type -q eza
	alias ls 'eza -lFhT --group-directories-first --level 1'
end

if type -q zoxide
	zoxide init --cmd v fish | source
end

if type -q direnv
	direnv hook fish | source
end

if type -q fnm
	fnm env --use-on-cd | source
end

# gazorby/fifc configuration
set -Ux fifc_editor "$EDITOR"
