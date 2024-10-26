alias copypath="pwd | pbcopy"

# cargo alias
alias cr="cargo run"
alias cb="cargo build"
# alias cc="cargo check"
alias ct="cargo test"
alias cg="cargo"

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
alias ls='eza --icons --color-scale all'
alias ll='ls -lah'

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

# for tere
alias t=tere

# for bpytop
alias top=btop

# for ncspot
alias spotify=ncspot

# for dooit
alias todo=dooit

# for tjournal
alias bm=tjournal

# for gh
alias ghpr='gh pr create'
