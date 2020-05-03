#! /bin/sh

if [ -n "$1" ]
then
	commit="$(git merge-base HEAD "$1")"
else
	commit="HEAD"
fi

git --no-pager log --pretty="version: %ct %h" -n1 "$commit" 2>&1 > version_static.txt
