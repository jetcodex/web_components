#!/usr/bin/env bash
if [ -z "$(git status --porcelain)" ]; then
	echo 'Repo is clean'
else
	if [[ "$1" != '' ]]; then
		git config user.name jetcodex
	    git config user.email jetbot@jetcodex.xyz
	    git add .
	    git commit -m "$1"
	    git push -u origin main
	fi    
fi
