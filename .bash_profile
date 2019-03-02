#!/usr/bin/env bash
eval "$(nodenv init -)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"

if [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Bash-It Config
export LC_ALL=en_US.UTF-8
export BASH_IT="$HOME/.bash_it"
export BASH_IT_THEME='powerline-plain'
export SCM_GIT_SHOW_DETAILS=false
export SCM_GIT_SHOW_MINIMAL_INFO=true
export SCM_GIT_IGNORE_UNTRACKED=true
export SCM_GIT_SHOW_STASH_INFO=false
source "$BASH_IT"/bash_it.sh
