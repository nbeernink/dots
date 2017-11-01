#disable icons on the desktop
defaults write com.apple.finder AppleShowAllFiles YES

#hide dock instantly
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0

#make finder show all files
defaults write com.apple.finder AppleShowAllFiles YES

#show path in finder
defaults write com.apple.finder ShowPathbar -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

#disable shadows around screenshots
defaults write com.apple.screencapture disable-shadow -bool true

#save screenshots in ~/Pictures/
defaults write com.apple.screencapture location ~/Pictures/

# don't create .DS_Stores on USB or network
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
