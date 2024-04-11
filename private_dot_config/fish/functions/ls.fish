function ls --wraps='eza -lhT --group-directories-first --level 1' --description 'alias ls eza -lhT --group-directories-first --level 1'
    command -q eza; and eza -lhT --group-directories-first --level 1 $argv
    or command ls
end
