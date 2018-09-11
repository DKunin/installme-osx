#!/bin/sh

# setup folder structure
mkdir ~/Projects

# nvm setup 
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

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
brew install fzf

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
brew install zsh
brew install shfmt

# OSX native apps
brew tap caskroom/cask
brew tap caskroom/versions

function installcask() {
	brew cask install "${@}" 2>/dev/null
}

# cask editors
installcask sublime-text3

# st3 package control plugin
curl https://sublime.wbond.net/Package%20Control.sublime-package -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# cask browsers
installcask google-chrome
installcask firefox
installcask beaker-browser

# cask devtools
installcask iterm2
installcask virtualbox
installcask vagrant
installcask sequel-pro
installcask tunnelblick
installcask keka
installcask cyberduck
installcask filezilla
installcask postman
installcask goland
installcask datagrip

# cask media
installcask vlc
installcask webtorrent
installcask beardedspice
installcask vox
installcask franz
installcask sketch
installcask skype

# cask helpers
installcask keepingyouawake
installcask bartender
installcask bitbar
installcask alfred
installcask smcfancontrol
installcask phoenix
installcask muzzle
installcask charles
installcask licecap

# some npm deps
npm install -g ipt
npm install nativefier -g

## Get dotfiles repo
cd ~/Projects || exit

## Get dotfiles repo
git clone https://github.com/DKunin/dotfiles.git

## Get bins repo
git clone https://github.com/DKunin/bin.git

## Setup symlinks
cd ~/ || exit
ln -s ~/Projects/dotfiles/env ~/.env
ln -s ~/Projects/dotfiles/aliases ~/.aliases
ln -s ~/Projects/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Projects/dotfiles/functions ~/.functions
ln -s ~/Projects/dotfiles/osx ~/.osx
ln -s ~/Projects/dotfiles/bash-prompt ~/.bash-prompt
ln -s ~/Projects/dotfiles/bash_profile ~/.bash_profile
ln -s ~/Projects/dotfiles/phoenix ~/.phoenix.js
ln -s ~/Projects/dotfiles/npm-init.js ~/.npm-init.js

## Load osx defaults
~/.osx

## Create a simple local env file - that can overwrite other stuff
touch .localenv

### Additional stuff
# - https://github.com/CGenie/alfred-pass
# - github.com/willfarrell
# - https://zlz.im/
# - https://github.com/zhaocai/alfred2-top-workflow
