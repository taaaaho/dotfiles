#!/bin/bash

dotfiles=(.zshrc .zprofile)

# Create symbolic link
for file in "${dotfiles[@]}"; do
  ln -svf $file ~/
done

# Apply settings
./install_system_settings.sh

# Install applications
./install_applications.sh

echo '================== Reboot shell =================='
exec $SHELL -l
