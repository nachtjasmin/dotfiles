#!/usr/bin/env fish

# Allows me to write "..." for an automatic "cd ../../".
abbr --add dotdot --regex '^\.\.+$' --function multicd

# Kubernetes-related stuff
abbr --add k kubectl
abbr --add kk kubectl klock
