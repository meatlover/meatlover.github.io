#!/bin/bash
usage() {
  echo '''
Shortcut to commit all changes
'''
}

if [ $# -eq 1 ]; then
  msg="- $1"
else
  msg=""
fi


if [ ! -d bin ]; then
  echo '[FS] Error: Wrong folder. exiting'
  exit 1
fi

git add *
git commit -a -m "$(date -Id) $msg"
git pull
git push

git checkout main
git pull
git merge origin/dev -m 'daily merge'
git push

git checkout dev
