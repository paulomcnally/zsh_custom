pt() {
  $1 $2
}

commit() {
  git commit -m "$1" -m "[#`git rev-parse --abbrev-ref HEAD | awk -F'/' '{ print $2 }'`]"
}
