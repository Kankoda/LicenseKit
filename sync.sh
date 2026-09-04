#!/bin/bash

SRC="../src/.build/docs-iOS"

if [ ! -d "$SRC" ]; then
  echo "Error: Source folder '$SRC' does not exist."
  exit 1
fi

find . -mindepth 1 \
  ! -path './.git' \
  ! -path './.git/*' \
  ! -name 'CNAME' \
  ! -name 'sync.sh' \
  -delete

echo "Copying files from $SRC..."
rsync -av "$SRC/" .

git add -A
git commit --amend --no-edit --allow-empty
git push -f

echo "Done."