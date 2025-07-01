#!/bin/bash
#
# Simplifies the setup of common Git hook managers by just needing a
#	use hooks
# line inside the .envrc.
#
# TODO: Check whether hooks are already installed and if so, skip the setup.

use_hooks() {
	if has pre-commit && [[ -f ".pre-commit-config.yaml" ]]; then
		pre-commit install
	fi

	if has lefthook && [[ -f ".lefthook.yml" ]]; then
		lefthook install
	fi
}
