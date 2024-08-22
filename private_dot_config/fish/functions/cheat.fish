function cheat --description 'Opens quick helpers for several commands.'
    curl -L https://cheat.sh/$argv[1] | $PAGER
end
