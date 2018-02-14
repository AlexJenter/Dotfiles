#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
brew install node
brew install tree
brew install rename

brew tap caskroom/cask
brew cask install 1password
brew cask install firefox
brew cask install google-chrome
brew cask install atom
brew cask install visual-studio-code
brew cask install processing

brew cask install sketch
brew cask install monodraw
brew cask install spotify
brew cask install google-drive
brew cask install vlc
brew cask install skype
brew cask install deluge

brew cask install adobe-creative-cloud
brew cask install adobe-illustrator-cc
brew cask install adobe-indesign-cc
brew cask install adobe-photoshop-cc
brew cask install adobe-photoshop-cc
brew cask install adobe-media-encoder-cc
brew cask install adobe-premiere-pro-cc
brew cask install adobe-after-effects-cc

# ATTRIBUTE / AMAZEEIO
brew cask install harvest
brew cask install sequel-pro
brew cask install virtualbox
brew install docker
brew install docker-machine
brew install docker-compose
brew tap amazeeio/cachalot
brew install cachalot


brew cask install vagrant

cachalot create --provider virtualbox
