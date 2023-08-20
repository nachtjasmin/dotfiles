# Make vim the default editor
export EDITOR="helix"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups

# Ignore some patterns for the history
export HISTORY_IGNORE="(ls|cd|cd -|pwd|exit|date|* --help)"

# Prefer US English and use UTF-8
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
