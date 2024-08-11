mcd() {
  mkdir -p "${1:?Need to specify an argument}" && cd "$1"
}

fix_ssh() {
  eval $(ssh-agent -s)
  ssh-add ~/.ssh/github_rsa/id_rsa
}
