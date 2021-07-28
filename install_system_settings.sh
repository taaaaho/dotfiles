#!/bin/bash

set -ue

# System setting
echo "show hide files"
defaults write com.apple.finder AppleShowAllFiles -boolean true

echo "change screenshot path"
mkdir ~/Pictures/screenshot
defaults write com.apple.screencapture location ~/Pictures/screenshot

echo "hide dock automatically"
defaults write com.apple.dock autohide -bool true
