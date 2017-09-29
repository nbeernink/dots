#!/bin/bash
# check if brew is installed
if which -s brew ; then
	brew update
	brew upgrade
	brew install \
		ack \
		bash \
		bash-completion2 \
		colordiff \
		curl \
		diff-so-fancy \
		dos2unix \
		gist \
		git \
		git-review \
		goaccess \
		lastpass-cli \
		mtr \
		ncdu \
		nmap \
		parallel \
		pv \
		python3 \
		shellcheck \
		ssh-copy-id \
		swaks \
		tig \
		tree \
		unrar \
		vim --override-system-vi \
		wget
	brew cask install caskroom/fonts/font-hack
else
	echo "Install brew first!"
fi
