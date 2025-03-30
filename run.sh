#!/bin/zsh
set -e

# Entrypoint for running custom bash scripts.
# Usage: ./run.sh <script_name> [args]
# Example: ./run.sh setup

SCRIPTS_DIR="${SCRIPTS_DIR:-./scripts}"
SCRIPTS_INIT="${SCRIPTS_INIT:-__init__.sh}"
SCRIPTS_INIT_PATH="${SCRIPTS_DIR}/${SCRIPTS_INIT}"

if [ -f "$SCRIPTS_INIT_PATH" ]; then
  source "$SCRIPTS_INIT_PATH"
fi

$@
