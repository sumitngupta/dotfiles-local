#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install moreutils
brew install findutils
brew install gnugp

brew install automake autoconf openssl libyaml readline libxslt libtool unixodbc unzip curl

brew install zsh

echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
chsh -s /usr/local/bin/zsh;

# brew tap homebrew/versions
brew install zsh-completions

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/zsh' /etc/shells; then
  echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/zsh;
fi;

# Install `wget` with IRI support.
brew install wget

# Rails Development
brew install asdf
brew install postgresql
brew install redis
brew cask install homebrew/cask-versions/adoptopenjdk8 # dependency for elasticsearch
brew install elasticsearch

# AWS crap
brew install aws-elasticbeanstalk
brew install awscli

# Install more recent versions of some macOS tools.
brew install vim
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
# brew install git
brew install git-lfs
brew install imagemagick
brew install node

brew tap heroku/brew
brew install heroku
brew install rename
brew install webkit2png

brew tap phinze/cask
brew tap caskroom/cask

# Core Functionality
echo Install Core Apps
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="~/Applications" transmission
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" flux

# Development
echo Install Dev Apps
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" rubymine
brew cask install --appdir="/Applications" charles
brew cask install --appdir="/Applications" easyfind

# Google Slavery
echo Install Google Apps
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" google-backup-and-sync

# Nice to have
echo Install Some additional Apps
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" droplr
brew cask install --appdir="/Applications" franz

# Remove outdated versions from the cellar.
brew cleanup
