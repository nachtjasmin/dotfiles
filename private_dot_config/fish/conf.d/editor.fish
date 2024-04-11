#!/usr/bin/env fish

# Helix as primary editor, always accessible via hx.
if command -q helix
    alias hx helix
    set -gx EDITOR helix
else
    command -q hx
    alias helix hx
    set -gx EDITOR hx
end
