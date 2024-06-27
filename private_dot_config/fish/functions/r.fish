function r --description 'Switches to the given Git repository. Any arguments are passed to fzf.'
    set repo_path "$HOME/repos/"
    set repos (fd -t directory --hidden  '\.(jj|git)$' --max-depth 4 $repo_path)
    set normalized (path dirname $repos | string replace $repo_path "")
    set chosen (printf "%s\n" $normalized | sort --unique | fzf $argv)
    cd "$repo_path$chosen"
end
