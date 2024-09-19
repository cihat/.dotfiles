# rds aliases
alias copypath="pwd | pbcopy"

# cargo alias
alias cr="cargo run"
alias cb="cargo build"
# alias cc="cargo check"
alias ct="cargo test"

# -------------------------------- #
# Node Package Manager
# -------------------------------- #
# https://github.com/antfu/ni

alias nio="ni --prefer-offline"
alias s="nr start"
alias d="nr dev"
alias b="nr build"
alias bw="nr build --watch"
alias t="nr test"
alias tu="nr test -u"
alias tw="nr test --watch"
alias w="nr watch"
alias p="nr play"
# alias c="nr typecheck"
alias lint="nr lint"
alias lintf="nr lint --fix"
alias release="nr release"
alias re="nr release"


# replace cat with bat
# alias cat="bat"

alias v="nvim"

# for eza
alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias la='eza -al --group-directories-first'
# alias ls='eza -alF --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'

# for delta https://github.com/dandavison/delta
alias gdiff='git -c delta.line-numbers=true log -p'

# for brew services
alias mongostop="brew services stop mongodb-community"
alias mongostart="brew services start mongodb-community"
alias mongorestart="brew services restart mongodb-community"

# for code current directory
alias c.="code ."
alias c="code"


# for rg
alias rgf='rg --files | rg'

# for node env 
node-env() {
  echo "will set node and pnpm to v$1"
  echo "use-node-version=$1" >> .npmrc
  nvm use "$1"
  pnpm env use --global "$1"
  pnpm add -g pnpm
}
