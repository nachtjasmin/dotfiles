#!/usr/bin/env fish

# Explanation:
# -f: disable file completions
# -a: use this script to get recent commits (provided by fish)
complete -c git-fixup -f -a '(__fish_git_recent_commits)'
