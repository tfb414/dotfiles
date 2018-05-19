#!/bin/bash

# install brew
which brew
r=$?
if [ $r == 0 ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

APPS=( 'bash' \
    'coreutils --with-default-names' \
    'findutils --with-default-names' \
    'git' \
    'gradle' \
    'httpie' \
    'kafkacat' \
    'maven' \
    'nginx' \
    'python3' \
    'shellcheck' \
    'tree' \
    'zsh-syntax-highlighting' \
    'Caskroom/cask/google-chrome' \
    'Caskroom/cask/iterm2' \
    'Caskroom/cask/java' \
    'neovim/neovim/neovim' \
    'Caskroom/cask/shiftit' \
    'caskroom/cask/postman' \
    'caskroom/cask/visual-studio-code')

for app in "${APPS[@]}"; do
  brew install $app || brew upgrade $app
done

