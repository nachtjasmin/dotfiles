#!/usr/bin/env fish

status is-interactive
and command -q direnv
and direnv hook fish | source
