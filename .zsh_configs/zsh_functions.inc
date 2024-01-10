mcd() {
  mkdir -p "${1:?Need to specify an argument}" && cd "$1"
}
