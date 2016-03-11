#!/bin/sh

# Do we have a git directory (are we in a repository)
GIT_DIR="$(git rev-parse --show-toplevel)/.git"

# Check it installed
if [ -d "$GIT_DIR/.githookbox" ]; then
	echo "It seems we are already installed, done."
	exit
fi
# If the git directory is already in itself a repository
if [ -d "$GIT_DIR/.git" ]; then
	echo "fatal: The .git directory for this work tree is already a work tree."
	echo ""
	echo "This is an unexpected and we can no longer make any assumptions."
	echo "Please backup your work, and cleanup the .git directory of this work tree."
	exit 1
fi

PWD=$(pwd -P)
cd "$GIT_DIR" || exit 1

# make master branch to backup state (git inception)
git init
curl -sO https://raw.githubusercontent.com/drkibitz/githookbox-template/master/.gitignore
git add --all
git commit --quiet --no-post-rewrite --message "Initial commmit before initializing githookbox-template" --author "Dr. Kibitiz <info@drkibitz.com>"
# make local mirror of githookbox-template and add as remote
git clone --quiet --mirror https://github.com/drkibitz/githookbox-template.git .githookbox/template.git
git remote add githookbox-template .githookbox/template.git
git fetch --quiet githookbox-template
# checkout and track our local clone master branch
git checkout --quiet --track -b githookbox-template-master githookbox-template/master

echo "Successfully installed githookbox for this work tree."

cd "$PWD" || exit
