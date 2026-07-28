for repo in $(gh repo list --limit 1000 --json name --jq '.[].name'); do \
  gh repo edit "l1n3ar/$repo" --visibility private --accept-visibility-change-consequences; \
done
