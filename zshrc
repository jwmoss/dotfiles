# XDG Base Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Path configuration (before oh-my-zsh so plugins can access)
export PATH="$HOME/.local/bin:$PATH"

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto

# Plugins
plugins=(git z docker brew macos zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

# History settings
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# Shell options
setopt AUTO_CD
setopt CORRECT
setopt CDABLE_VARS

# Aliases
alias cc="claude --dangerously-skip-permissions"
