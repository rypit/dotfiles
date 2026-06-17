# shellcheck shell=bash

# Path
export PATH="$HOME/.local/bin:$PATH"

# Enable Powerlevel10k instant prompt.
 Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# shellcheck disable=SC2296
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # shellcheck disable=SC2296,SC1090
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antidote
# shellcheck disable=SC1091
source "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"

# Initialize completions
autoload -Uz compinit && compinit

# Load plugins
antidote load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# shellcheck disable=SC1090
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Environment initializers
eval "$(nodenv init -)"
eval "$(rbenv init -)"

# Python (uv)
eval "$(uv generate-shell-completion zsh)"

# Aliases
alias ls="ls -G"
alias ll="ls -l"

# Local LLM (llama.cpp + Aider)
alias llm-start='$HOME/projects/dotfiles/script/llm start'
alias code-agent='aider --model openai/qwen2.5-coder-32b-instruct --openai-api-base http://localhost:8080/v1'

# History configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
# shellcheck disable=SC2034
SAVEHIST=10000
setopt hist_ignore_dups share_history
