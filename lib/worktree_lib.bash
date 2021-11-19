#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export WORKTREE_DOTFILE="$SCRIPT_DIR"/../.worktree

function _worktree_name() {
  cat "$WORKTREE_DOTFILE"
}

function _worktree_repo() {
  echo "$HOME"/workspace/postgres/worktree-"$(_worktree_name)"
}

function _worktree_exists() {
  if [ ! -f "$WORKTREE_DOTFILE" ]; then
    echo "Worktree is not configured."
    exit 1
  fi
}

function _worktree_datadir() {
  echo "$HOME"/workspace/data_dirs/"$(_worktree_name)"
}

function _worktree_prefix() {
  echo /usr/local/"$(_worktree_name)"
}
