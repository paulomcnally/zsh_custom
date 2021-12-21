agp_branch() {
  if [ -d "./git" ]
  then
    case $(git branch --show-current | sed 's:/[^/]*$::') in

    "")
      echo -n ""
      ;;

    "fature" | "feature/PRO-" | "fix" | "chore")
      echo -n "AP: ✓"
      ;;

    *)
      echo -n "AP ✗"
      ;;
    esac
  fi
}