#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "$SCRIPT_DIR/worktree_lib.bash"

if [ -z "$OLD_PATH" ]; then
  export OLD_PATH=$PATH
else
  export PATH=$OLD_PATH
fi
export PATH=$(_worktree_prefix)/bin:$PATH
