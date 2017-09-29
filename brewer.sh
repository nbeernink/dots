#!/bin/bash
# check if brew is installed
if brew ls --versions > /dev/null ; then
	brew update
	brew upgrade
	brew install \
		ack \
		bash \
		bash-completion2 \
		colordiff \
		coreutils \
		curl \
		diff-so-fancy \
		diffutils \
		dos2unix \
		ed --with-default-names \
		file-formula \
		findutils --with-default-names \
		gawk \
		gist \
		git \
		git-review \
		gnu-indent --with-default-names \
		gnu-sed --with-default-names \
		gnu-tar --with-default-names \
		gnu-which --with-default-names \
		gnutls \
		goaccess \
		grep --with-default-names \
		gzip \
		lastpass-cli \
		less \
		mtr \
		ncdu \
		nmap \
		openssh \
		parallel \
		pv \
		python3 \
		rsync \
		screen \
		shellcheck \
		ssh-copy-id \
		swaks \
		tig \
		tree \
		unrar \
		unzip \
		vim --override-system-vi \
		watch \
		wget
	brew cask install caskroom/fonts/font-hack
else
	echo "Install brew first!"
fi
