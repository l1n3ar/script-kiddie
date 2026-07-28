#!/bin/sh
set -e

# Set local git identity by manually typing a username
set_identity_manual() {
  echo "Enter the username for this repo:"
  read -r username

  user_id=$(gh api user -q .id)

  git config user.name "$username"
  git config user.email "${user_id}+${username}@users.noreply.github.com"

  echo "Set local git identity to: $username <${user_id}+${username}@users.noreply.github.com>"
}

# Set local git identity automatically from whichever gh account is currently active
set_identity_from_gh() {
  username=$(gh api user -q .login)
  user_id=$(gh api user -q .id)

  git config user.name "$username"
  git config user.email "${user_id}+${username}@users.noreply.github.com"

  echo "Set local git identity to: $username <${user_id}+${username}@users.noreply.github.com>"
}

# Run whichever function is passed as an argument, e.g.:
#   ./set-git-identity.sh manual
#   ./set-git-identity.sh gh
case "$1" in
  manual)
    set_identity_manual
    ;;
  gh)
    set_identity_from_gh
    ;;
  *)
    echo "Usage: $0 {manual|gh}"
    exit 1
    ;;
esac