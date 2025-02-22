# Used for all local binaries.
fish_add_path ~/.local/bin

# Rust
fish_add_path ~/.cargo/bin

# Flatpak
fish_add_path /var/lib/flatpak/exports/bin/
fish_add_path $HOME/.local/share/flatpak/exports/bin/

# Krew (kubectl plugin manager)
fish_add_path $HOME/.krew/bin
