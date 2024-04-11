#!/usr/bin/env fish

status is-interactive; and return
command -q direnv; and direnv hook fish | source
