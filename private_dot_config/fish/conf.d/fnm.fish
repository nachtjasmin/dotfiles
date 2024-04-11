#!/usr/bin/env fish

status is-interactive; and return
command -q fnm; and fnm env --use-on-cd | source
