#!/bin/bash

dotfiles=(.zshrc tmux/.tmux.conf)

for file in "${dotfiles[@]}"; do
    ln -svf ~/dotfiles/$file ~/
done

# ~/.config/nvimが存在しない場合にのみシンボリックリンクを作成する
if [ ! -e ~/.config/nvim ]; then
    ln -svf ~/dotfiles/nvim ~/.config/nvim
else
    echo "~/.config/nvim already exists, skipping symlink creation."
fi
