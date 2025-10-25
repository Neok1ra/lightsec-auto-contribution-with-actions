#!/bin/bash

# Navigate to repo directory
cd "$(dirname "$0")"

# Configure Git user
git config user.name "Neok1ra"
git config user.email "bannedbylight@gmail.com"

# Create or update the commit log and backdate 50 commits
for i in {1..50}
do
  export GIT_AUTHOR_DATE="$(date -d "$i days ago" +"%Y-%m-%dT12:00:00")"
  export GIT_COMMITTER_DATE="$GIT_AUTHOR_DATE"
  echo "Commit on $GIT_AUTHOR_DATE" >> commits.txt
  git add commits.txt
  git commit -m "Fake commit $i"
done

git push origin master
