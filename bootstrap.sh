#!/bin/bash

echo "Pull updates..."
git pull origin master;

function deploy() {
	#rsync dotfiles into homedir
	rsync -av --no-perms \
		--exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "brewer.sh" \
		--exclude "README.md" \
		. ~;
	source ~/.bash_profile && echo "Deployed dotfiles!"
}

if [ "$1" == "--force" ] || [ "$1" == "-f" ]; then
	deploy;
else
	read -rp "Overwrite files in your home directory? y/n "
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		deploy;
	fi;
fi;
unset deploy;
