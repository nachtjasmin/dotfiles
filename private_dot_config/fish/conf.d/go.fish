#!/usr/bin/env fish

# Sets some default variables for Go. To allow per-system overrides using "go
# env -w", the ~/.config/go/env file is **not** used for that.

# Don't clutter the home directory by default.
set -x -U GOPATH $HOME/.local/go

# Install all binaries in ~/.local/bin
set -x -U GOBIN $HOME/.local/bin

# And store the cache in the actual cache directory.
set -x -U GOMODCACHE $HOME/.cache/go

# Download newer toolchains automatically if necessary.
set -x -U GOTOOLCHAIN auto
