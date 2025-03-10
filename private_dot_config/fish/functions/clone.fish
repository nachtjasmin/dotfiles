function clone --wraps='git clone' --description 'Clones a Git repository and automatically determines the correct path.' --argument repo
    set path_segments (string split ':' $repo)
    set folder (string replace ".git" "" $path_segments[2])
    set folder "$HOME/repos/$folder"
    jj git clone $argv[2..] $repo $folder
    cd $folder
end
