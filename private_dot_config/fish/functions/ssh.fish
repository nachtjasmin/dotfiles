# SSH kitten if inside kitty session and
function ssh --description 'SSH wrapper that uses kittys ssh kitten if available' --wraps ssh
    if test "$TERM" = xterm-kitty && command -q kitty
        command kitty +kitten ssh $argv
    else
        command ssh $argv
    end
end
