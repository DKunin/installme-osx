#!/bin/sh

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
brew install shfmt

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

# cask devtools
installcask iterm2
installcask virtualbox
installcask vagrant
installcask skype
installcask sequel-pro
installcask tunnelblick
installcask keka
installcask cyberduck
installcask postman

# cask media
installcask vlc
installcask vox
installcask slack

# cask helpers
installcask keepingyouawake
installcask smcfancontrol
