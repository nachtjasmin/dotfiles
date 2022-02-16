# Add Go binaries
export PATH="$PATH:$HOME/go/bin"

# Add Rust binaries
export PATH="$PATH:$HOME/.cargo/bin"

# Sudoless npm global packages (https://wiki.archlinux.org/index.php/Node.js#Allow_user-wide_installations)
PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"
