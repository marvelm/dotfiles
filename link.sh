#!/bin/sh
sudo pacman -S zsh \
  neovim \
  tmux \
  ranger \
  git \
  firefox \
  chromium \
  gnupg \
  jq

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install tmux-themepack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

cp ./tmux/.tmux.conf ~/
cp -r ./nvim/* ~/.config/nvim/
cp zsh/.zshrc ~/

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
