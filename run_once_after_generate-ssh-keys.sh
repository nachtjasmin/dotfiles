#!/bin/bash
if ! command -v ssh-keygen &>/dev/null; then
	echo "ssh not installed on system, skipping ssh key generation..."
	exit 0
fi

destination="$HOME/.ssh/id_ed25519"

# if file does not exist, generate a new SSH key
if [ ! -f "$destination" ]; then
	ssh-keygen -t ed25519 -a 100 -f "$destination"
fi
