#!/bin/bash
#
# Sets the DOCKER_HOST to the socket of the local podman user.
# Docs: https://github.com/containers/podman/blob/main/docs/tutorials/socket_activation.md
use_podman() {
	export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/podman/podman.sock
}
