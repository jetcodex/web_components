#!/usr/bin/env bash

if [[ $(git diff --stat) != '' ]]; then
    # git config user.name jetcodex
    # git config user.email jetbot@jetcodex.xyz
    git add .
    git commit -m "$1"
    git push -u origin main
else
    echo 'Repo is clean'
fi