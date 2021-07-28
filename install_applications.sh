#!/bin/bash

set -ue

# only return status: 0 -> success / 1 -> error
function has() {
  type "$1" > /dev/null 2>&1
}

if has "brew"; then
  echo "Homebrew is already installed"
else
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update && brew upgrade

# Install CUI applications
while read line
do
  echo "Installing ""$line"...
  brew install "$line"
done < $PWD/cui_app

# Install GUI applications
while read line
do
  echo "Installing ""$line"...
  brew install --cask "$line"
done < $PWD/gui_app

