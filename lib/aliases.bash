#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "$SCRIPT_DIR/worktree_lib.bash"

alias repo='_worktree_exists && cd $(_worktree_repo)'
alias datadir='_worktree_exists && cd $(_worktree_datadir)'
alias src='_worktree_exists && source $SCRIPT_DIR/path.bash'
alias srcalias='_worktree_exists && source $SCRIPT_DIR/aliases.bash'
src
