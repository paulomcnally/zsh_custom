pt() {
  $1 $2 $3
}

# Run git commit command.
#
# @argument $1
#   -am
#   -m
#
# @argument $2
#   Text
commit() {
  [[ -z "$1" ]] && { error_message; return; }
  [[ -z "$2" ]] && { error_message; return; }
  if [[ $1 == "-am" ]] || [[ $1 == "-m" ]]; then
    git commit $1 "$2" -m "[#`git rev-parse --abbrev-ref HEAD | awk -F'/' '{ print $2 }'`]"
  else
    error_message;
    return;
  fi
}

# show error message with example command
function error_message() {
  echo "The correct format is:";
  echo ""
  echo "   pt commit -m \"Commit message\"";
  echo "or"
  echo "   pt commit -am \"Commit message\"";
}
