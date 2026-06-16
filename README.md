# dotfiles ![zsh](https://img.shields.io/badge/%F0%9F%9B%A0-zsh-blue.svg)

My personal dotfiles for [`zsh`](https://www.zsh.org/).

* 🧙‍ Leverages [`antidote`](https://getantidote.github.io/) for Zsh plugin management.
* 🚀 Uses the feature-rich and fast [`powerlevel10k`](https://github.com/romkatv/powerlevel10k) theme.
* 👻 Optimized for the [`ghostty`](https://ghostty.org/) terminal emulator.
* 🐍 Uses [`uv`](https://github.com/astral-sh/uv) for lightning-fast Python management.
* 💎 Manages environments for `nodenv` and `rbenv`.
* 🤵 Tailored for macOS with surgical `defaults write` configuration in `script/macos`.
* ⚙️ Includes my personal application configuration for [`iTerm2`](https://www.iterm2.com/).
* ✅ Validated with [`shellcheck`](https://github.com/koalaman/shellcheck).

## Installation

Run the bootstrap script:

```bash
./script/bootstrap
```

This will:
1. Install Homebrew (if missing).
2. Install dependencies via `brew bundle` (using `~/projects/homebrew-brewfile`).
3. Set your shell to `zsh`.
4. Symlink configuration files.
5. Apply macOS system preferences surgically.
