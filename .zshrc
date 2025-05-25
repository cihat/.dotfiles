# ZSH settings
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
export UPDATE_ZSH_DAYS=14
export DISABLE_UPDATE_PROMPT=true # accept updates by default

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
    colored-man-pages
)

# https://ohmyz.sh/
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# for jump
eval "$(jump shell)"

# pnpm
export PNPM_HOME="/Users/cihatsalik/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Load custom aliases
if [[ -f "$HOME/.zsh_configs/.zsh_aliases.inc" ]]; then
    source "$HOME/.zsh_configs/.zsh_aliases.inc"
else
    echo >&2 "WARNING: can't load shell aliases"
fi

# Load custom functions
if [[ -f "$HOME/.zsh_configs/.zsh_functions.inc" ]]; then
    source "$HOME/.zsh_configs/.zsh_functions.inc"
else
    echo >&2 "WARNING: cna't load shell functions"
fi

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
