# dotfiles ![zsh](https://img.shields.io/badge/%F0%9F%9B%A0-zsh-blue.svg) [![CI](https://github.com/rypit/dotfiles/actions/workflows/test.yml/badge.svg)](https://github.com/rypit/dotfiles/actions/workflows/test.yml)

My personal dotfiles for [`zsh`](https://www.zsh.org/).

* 🧙‍ Leverages [`antidote`](https://getantidote.github.io/) for Zsh plugin management:
    * [`zsh-completions`](https://github.com/zsh-users/zsh-completions): Additional completion definitions.
    * [`powerlevel10k`](https://github.com/romkatv/powerlevel10k): Fast and flexible theme.
    * [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions): As-you-type command suggestions.
    * [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting): Command syntax highlighting.
* 👻 Optimized for the [`ghostty`](https://ghostty.org/) terminal emulator.
* 🐍 Uses [`uv`](https://github.com/astral-sh/uv) for lightning-fast Python management.
* 💎 Manages environments for `nodenv` and `rbenv`.
* 🤵 Tailored for macOS with surgical `defaults write` configuration in `script/macos`.
* ✅ Validated with [`shellcheck`](https://github.com/koalaman/shellcheck).

## Installation

Run the bootstrap script:

```bash
./script/bootstrap
```

This will:
1. Install Homebrew (if missing).
2. Install dependencies via `brew bundle` (using local `Brewfile`).
3. Set your shell to `zsh`.
4. Symlink configuration files.
5. Apply macOS system preferences surgically.
