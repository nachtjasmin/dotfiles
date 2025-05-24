#!/usr/bin/env sh

set +eu

# Deprecated, still here for backwards compatibility.
layout_uv() {
	log_status "layout uv is deprecated, please use 'layout python' in the future."
	layout_python
}

layout_python() {
	if [[ -d ".venv" ]]; then
		VIRTUAL_ENV="$(pwd)/.venv"
	fi

	if [[ -z $VIRTUAL_ENV || ! -d $VIRTUAL_ENV ]]; then
		log_status "No uv project exists. Executing \`uv init\` to create one."
		uv init --no-readme
		rm hello.py
		uv venv
		VIRTUAL_ENV="$(pwd)/.venv"
	fi

	PATH_add "$VIRTUAL_ENV/bin"
	export UV_ACTIVE=1 # or VENV_ACTIVE=1
	export VIRTUAL_ENV
}
