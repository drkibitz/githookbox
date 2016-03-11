#!/bin/sh

# Do we have a git directory (are we in a repository)
GIT_DIR="$(git rev-parse --show-toplevel)/.git"

# Check if installed
if ! [ -d "$GIT_DIR/.githookbox" ]; then
	echo "It seems we are already uninstalled, done."
	exit 0
fi
# If the git directory is already in itself not a repository
if ! [ -d "$GIT_DIR/.git" ]; then
	echo "fatal: The .git directory for this work tree not a work tree."
	echo ""
	echo "This is an unexpected and we can no longer make any assumptions."
	echo "Please backup your work, and cleanup the .git directory of this work tree."
	exit 1
fi

PWD=$(pwd -P)
cd "$GIT_DIR" || exit 1

git checkout --quiet master
rm -fR .git .githookbox .gitignore

echo "Successfully uninstalled githookbox for this work tree."

cd "$PWD" || exit
