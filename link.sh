sudo pacman -S fish \
  neovim \
  tmux \
  ranger \
  git \
  firefox \
  chromium \
  gnupg \
  jq

# install omf
curl -L http://get.oh-my.fish | fish

# install fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install tmux-themepack
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

cp ./omf/init.fish ~/.config/omf/
cp ./tmux/.tmux.conf ~/
cp -r ./nvim/* ~/.config/nvim/
