function ls --description 'Use eza for listing files if available'
    command -q eza; and eza -lgh --smart-group --group-directories-first $argv
    or command ls
end
