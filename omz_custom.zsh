# ZSH theme
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)

# Replace OMZ's aliases with my own
unalias -a
source ~/.aliases

# Disable OMZ's "ls colors" (the option provided in .zshrc doesn't seem to do anything)
# Also ensure that the BSD color option is configured
unset LSCOLORS
export CLICOLOR=1

# Disable OMZ plugin "virtualenv"'s disabling of prompt info
unset VIRTUAL_ENV_DISABLE_PROMPT

