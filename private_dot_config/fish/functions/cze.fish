# Source: https://github.com/twpayne/chezmoi/discussions/2631#discussioncomment-4457933

function cze -d "Change dotfile interactively using fuzzy matching"
    set fzf_command fzf
    if test -n $argv[1]
        set -a fzf_command "--query=$argv[1]" -1
    end

    set file_path (chezmoi managed --include=files | command $fzf_command)
    if test -z "$file_path"
        echo "No file selected"
    else
        command chezmoi edit --apply "$HOME/$file_path"
    end
end
