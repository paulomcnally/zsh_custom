vdocker() {
  [[ -z "$1" ]] && { error_message; return; }

  if [[ $1 == "start" ]]; then
    VBoxManage startvm "docker-vm" --type headless
  fi
}

# show error message with example command
function error_message() {
  echo "The correct format is:";
  echo ""
  echo "   vdocker start";
}
