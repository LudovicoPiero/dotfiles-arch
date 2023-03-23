#!/usr/bin/env sh

#TODO: Maybe there is a better way to do this?

# abort on errors
set -e

# List every folder and file in the .config folder in the current directory
# and create a symlink to the ~/.config folder
for file in .config/*; do
    ln -sf $PWD/$file ~/.config/
done

# Do the same for the .bin folder to ~/.bin
for file in .bin/*; do
    ln -sf $PWD/$file ~/.bin/
done

# And .emacs.d to ~/.emacs.d
ln -sf $PWD/.emacs.d/init.el ~/.emacs.d/init.el
