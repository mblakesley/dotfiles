### Lines configured by zsh-newuser-install
# Set up the prompt
setopt sharehistory  # real-time history sync b/w shell sessions
setopt histignorealldups
setopt autocd  # change dir given only path (no `cd` needed)
setopt noclobber  # prevent ">" operator from overwriting existing file
setopt interactivecomments  # treat # as a comment metachar in interactive shells
setopt globdots  # make * include hidden files
setopt notify  # immediately report changes in background jobs - may not be working right now

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
### End of lines configured by zsh-newuser-install

### The following lines were added by compinstall
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

autoload -Uz compinit bashcompinit
compinit
bashcompinit
### End of lines added by compinstall

# PL10K
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.config/pl10k.zsh.
[[ ! -f ~/.config/pl10k.zsh ]] || source ~/.config/pl10k.zsh

export CLICOLOR=1  # BSD needs this for color


source ~/.config/aliases


### EXTRAS ADDED FOR CLI TOOLS
# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# FZF
source <(fzf --zsh)
# AWS CLI
complete -C aws_completer aws
# ASDF
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

