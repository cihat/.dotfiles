mcd() {
  mkdir -p "${1:?Need to specify an argument}" && cd "$1"
}

fix_ssh() {
  eval $(ssh-agent -s)
  ssh-add ~/.ssh/github_rsa/id_rsa
}

# for node env 
node-env() {
  echo "will set node and pnpm to v$1"
  echo "use-node-version=$1" >> .npmrc
  nvm use "$1"
  pnpm env use --global "$1"
  pnpm add -g pnpm
}


tere() {
    local result=$(command tere "$@")
    [ -n "$result" ] && cd -- "$result"
}
