#!/usr/bin/env bash
# install some neccessary packages
apt-get install build-essential
apt-get install curl
apt-get install git
apt-get install git-flow
apt-get install git-ftp
apt-get install python-software-properties
apt-get install silversearcher-ag
apt-get install software-properties-common
apt-get install tmux
apt-get install wget

add-apt-repository ppa:neovim-ppa/stable
apt-get update
apt-get install neovim
apt-get install python-dev python-pip python3-dev python3-pip
apt-get install python-dev python-pip python3-dev
apt-get install python3-setuptools
easy_install3 pip

# install all submodules
git submodule init
git submodule update

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
cd ~

# link the dotfiles
mkdir ~/.config
ln -s ~/dotfiles/agignore ~/.agignore
ln -s ~/dotfiles/editorconfig ~/.editorconfig
ln -s ~/dotfiles/gemrc ~/.gemrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/ruby-version ~/.ruby-version
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh ~/.zsh
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

pip3 install neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh installer.sh ~/.config/nvim/dein

# set xterm/screen terminals to enable italic fonts in terminal
tic ~/dotfiles/other/xterm-256color.terminfo

# set iterm terminal to xterm-256color!
# now restart your terminal/iterm2 and hope for the best

# set zsh to the default
vim /etc/shells
chsh -s /usr/bin/zsh
/usr/bin/env zsh
mv /etc/zshenv /etc/zprofile
