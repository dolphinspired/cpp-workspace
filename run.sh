#!/bin/zsh
set -e

# Entrypoint for running custom bash scripts.
# Usage: ./run.sh <script_name> [args]
# Example: ./run.sh setup

export SCRIPTS_ENTRY=`realpath "$0"`
export SCRIPTS_ROOT=`realpath ${SCRIPTS_DIR:-./scripts}`

init() {
  module() {
    local module_dir=`realpath "$1"`
    local module_init="$module_dir/__init__.sh"

    # Only initialize the directory like a module if __init__.sh exists
    if [ ! -f "$module_init" ]; then
      return
    else
      source "$module_init"
    fi

    for entry in "${module_dir}"/*.sh; do
      if [ -d "$entry" ]; then
        # Recursively initialize directories as submodules
        init module "$entry"
      elif [ -f "$entry" ]; then
        # Source each script file in the directory
        source "$entry"
      fi
    done
  }

  $@
}

# Source all scripts in the scripts directory
init module "$SCRIPTS_ROOT"

# Run all arguments as a command
$@
