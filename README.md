# dotfiles

Personal configuration files for macOS development environment.

## What's Included

| File | Description |
|------|-------------|
| `zshrc` | Zsh configuration with Oh My Zsh, plugins, and history settings |
| `gitconfig` | Git user configuration |
| `gh_config.yml` | GitHub CLI configuration and aliases |
| `ghostty.config` | [Ghostty](https://ghostty.org/) terminal emulator settings |
| `opencode.json` | [Opencode](https://github.com/opencode-ai/opencode) AI tool configuration |

## Features

- **XDG Base Directory** compliance for clean home directory organization
- **Oh My Zsh** with curated plugins:
  - `git` - Git aliases and completion
  - `z` - Directory jumping based on frecency
  - `docker` - Docker completion
  - `brew` - Homebrew completion
  - `macos` - macOS utilities
  - `zsh-autosuggestions` - Fish-like autosuggestions
  - `zsh-syntax-highlighting` - Syntax highlighting at the prompt
  - `zsh-history-substring-search` - Fish-like history search
- **Ghostty** terminal configured with:
  - BerkeleyMono Nerd Font
  - Gruvbox Dark theme
  - Block cursor (non-blinking)
  - 10,000 line scrollback
  - Copy-on-select enabled

## Prerequisites

- macOS
- [Homebrew](https://brew.sh/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Ghostty](https://ghostty.org/) (optional)
- [BerkeleyMono Nerd Font](https://www.nerdfonts.com/) (for Ghostty)

### Installing Zsh Plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

## Installation

Clone the repository:

```bash
git clone https://github.com/jwmoss/dotfiles.git ~/github/dotfiles
cd ~/github/dotfiles
```

Run the install script:

```bash
./install.sh
```

Or manually symlink individual files:

```bash
ln -sf ~/github/dotfiles/zshrc ~/.zshrc
ln -sf ~/github/dotfiles/gitconfig ~/.gitconfig
ln -sf ~/github/dotfiles/gh_config.yml ~/.config/gh/config.yml
ln -sf ~/github/dotfiles/ghostty.config ~/.config/ghostty/config
ln -sf ~/github/dotfiles/opencode.json ~/.config/opencode/opencode.json
```

## License

MIT
