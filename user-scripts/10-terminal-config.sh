#!/bin/bash

rm $HOME/.bash_history 2> /dev/null; ln -s /dev/null $HOME/.bash_history
mkdir -p $HOME/.local/bin

cat ./assets/dots/fish/bashrc-fish-dropin >> $HOME/.bashrc

mkdir -p $HOME/.config/fish/conf.d
mkdir -p $HOME/.config/fish/functions
echo 'set -g fish_greeting' > $HOME/.config/fish/conf.d/no-greeting.fish
echo 'set -g fish_private_mode true' > $HOME/.config/fish/conf.d/private-mode.fish
cp ./assets/dots/fish/fish_prompt.fish $HOME/.config/fish/functions/.

fish --no-config --command fish_update_completions

if [[ -n $(whereis kitty | sed 's/kitty://g') ]]; then
  mkdir -p $HOME/.config/kitty
  cp ./assets/dots/kitty/* $HOME/.config/kitty/.
fi
