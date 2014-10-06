#!/bin/sh

brew --version > /dev/null

if [ $? != 0 ]; then
  # homebrewのインストール
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade brew-cask
brew cleanup
brew cask cleanup

# homebrew cask
brew install caskroom/cask/brew-cask

# zsh
# brew install zsh

# peco
brew tap peco/peco
brew install peco
