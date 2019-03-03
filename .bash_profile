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

# bash-it Cconfig.
export BASH_IT="$HOME/.bash_it"
export LC_ALL=en_US.UTF-8
export BASH_IT_THEME='powerline-multiline'
export SCM_GIT_SHOW_DETAILS=false
export SCM_GIT_SHOW_MINIMAL_INFO=true
export SCM_GIT_IGNORE_UNTRACKED=true
export SCM_GIT_SHOW_STASH_INFO=false
export THEME_CLOCK_FORMAT="%l:%M %p"
export SCM_CHECK=true
export POWERLINE_LEFT_PROMPT="user_info cwd scm"
export POWERLINE_RIGHT_PROMPT="ruby node python clock"
export POWERLINE_PADDING=3
source "$BASH_IT"/bash_it.sh

# bash-it customizations
export SCM_THEME_PROMPT_CLEAN_COLOR=2
export SCM_THEME_PROMPT_DIRTY_COLOR=3
export SCM_THEME_PROMPT_STAGED_COLOR=3
export SCM_THEME_PROMPT_UNSTAGED_COLOR=3
export USER_INFO_THEME_PROMPT_COLOR=1
export CWD_THEME_PROMPT_COLOR=10
export USER_INFO_THEME_PROMPT_COLOR_SUDO=202
export CLOCK_THEME_PROMPT_COLOR=10

# Override powerline ruby prompt.
function __powerline_ruby_prompt {
  RUBY_VERSION="$(cat .ruby-version 2>/dev/null)"
  if [ "$RUBY_VERSION" != "" ] ; then
    echo "💎 ${RUBY_VERSION}|1"
  fi
}

# Create powerline node prompt.
function __powerline_node_prompt {
  NODE_VERSION="$(cat .node-version 2>/dev/null)"
  if [ "$NODE_VERSION" != "" ] ; then
    echo "⬢ ${NODE_VERSION}|2"
  fi
}

# Override powerline python prompt.
function __powerline_python_prompt {
  PYTHON_VERSION="$(cat .python-version 2>/dev/null)"
  if [ "$PYTHON_VERSION" != "" ] ; then
    echo "🐍 ${PYTHON_VERSION}|6"
  fi
}
