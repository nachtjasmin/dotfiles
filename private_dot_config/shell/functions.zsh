#  Commit everything
function commit() {
  commitMessage="$1"

  if [ "$commitMessage" = "" ]; then
    commitMessage="wip"
  fi

  git add .
  eval "git commit -a -m '${commitMessage}'"
}
