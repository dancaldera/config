#! /bin/bash 

# This script is used to initialize the Debian system.
# It is used to install the necessary software and configure the system.

# Update the system
apt-get update
apt-get upgrade -y

# Install the necessary software
apt-get install -y nvim git

# Install NodeJS version 18
curl -sL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs

# Install Python3
apt-get install -y python3

# Install Python3-pip
apt-get install -y python3-pip

# Install Yarn
npm install -g yarn

# Install nvim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install neccesary libs for coc.nvim
apt-get install -y build-essential cmake python3-dev

# set config folder to nvim
mkdir -p ~/.config/nvim

# cp init.vim to nvim config folder
cp init.vim ~/.config/nvim/init.vim

# Install vim-plug plugins
nvim +PlugInstall +qall

