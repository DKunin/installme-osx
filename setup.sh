#!/bin/sh

# setup folder structure
mkdir ~/Projects

# nvm setup 
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

# brew setup
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Core utils
brew install coreutils
brew install findutils

# Dependencies
brew install jpeg-turbo
brew install optipng
brew install readline
brew install pkg-config
brew install cairo
brew install libpng
brew install jpeg
brew install giflib

# Apps
brew install the_silver_searcher
brew install ant
brew install git
brew install git-lfs
brew install mercurial
brew install irssi
brew install unrar
brew install trash
brew install tree
brew install wget
brew install tig
brew install ffind
brew install openconnect

# OSX native apps
brew tap caskroom/cask
brew tap caskroom/versions

function installcask() {
    brew cask install "${@}" 2> /dev/null
}

# cask editors
installcask sublime-text3

# cask browsers
installcask google-chrome
installcask firefox
installcask firefoxdeveloperedition

# cask devtools
installcask iterm2
installcask teamviewer    
installcask virtualbox
installcask vagrant
installcask skype
installcask sequel-pro
installcask tunnelblick
installcask keka

# cask media
installcask vlc
installcask android-file-transfer
installcask utorrent
installcask beardedspice
installcask vox

# cask helpers
installcask anybar
installcask keepingyouawake
installcask itsycal
installcask bartender
installcask bitbar
installcask alfred
installcask unified-remote
installcask smcfancontrol

# npm dependencies that I'm not likely to live without
npm install -g grunt-cli
npm install -g light-server
npm install -g gulp
npm install -g yo
npm install -g http-server
npm install -g js-beautify

## Get dotfiles repo
cd ~/Projects
git clone https://github.com/DKunin/dotfiles.git

## Get zsh bundle manager
git clone https://github.com/tarjoilija/zgen.git

## Setup symlinks
cd ~/
ln -s ~/Projects/dotfiles/aliases ~/.aliases
ln -s ~/Projects/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Projects/dotfiles/zshrc ~/.zshrc

# Set zsh as default shell
chsh -s /bin/zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"