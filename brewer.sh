#!/bin/bash
# check if brew is installed
if brew ls --versions > /dev/null ; then
	brew update
	brew upgrade
	brew install ack
	brew install bash
	brew install bash-completion2
	brew install colordiff
	brew install coreutils
	brew install curl
	brew install diff-so-fancy
	brew install diffutils
	brew install dos2unix
	brew install ed --with-default-names
	brew install file-formula
	brew install findutils --with-default-names
	brew install gawk
	brew install gist
	brew install git
	brew install git-review
	brew install gnu-indent --with-default-names
	brew install gnu-sed --with-default-names
	brew install gnu-tar --with-default-names
	brew install gnu-which --with-default-names
	brew install gnutls
	brew install goaccess
	brew install grep --with-default-names
	brew install gzip
	brew install httpie
	brew install ipcalc
	brew install lastpass-cli
	brew install less
	brew install mtr
	brew install ncdu
	brew install nmap
	brew install parallel
	brew install pv
	brew install pwgen
	brew install python
	brew install python3
	brew install ranger
	brew install rsync
	brew install screen
	brew install shellcheck
	brew install ssh-copy-id
	brew install swaks
	brew install tig
	brew install tldr
	brew install tree
	brew install unrar
	brew install unzip
	brew install vim --override-system-vi
	brew install watch
	brew install wget
	brew cask install caskroom/fonts/font-hack
else
	echo "Install brew first!"
fi
