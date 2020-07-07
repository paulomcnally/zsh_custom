ciclo() {
  [[ -z "$1" ]] && { error_message; return; }

  if [[ $1 == "start" ]]; then
    export DB_HOST=127.0.0.1
    ~/.rbenv/shims/rails s -p 5000
  fi
}

# show error message with example command
function error_message() {
  echo "The correct format is:";
  echo ""
  echo "   ciclo start";
}
