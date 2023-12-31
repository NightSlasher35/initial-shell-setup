#!/bin/bash

# Pre-Requisites
sudo apt-get install git make zsh wget curl

# oh-my-zsh
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
curl -fsSL https://raw.githubusercontent.com/NightSlasher35/initial-shell-setup/master/.zshrc -o ~/.zshrc

# Pyenv
read -p "Do you want to install pyenv? (y/n): " install_pyenv
if [ "$install_pyenv" == "y" ]; then
    sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl
    
    curl https://pyenv.run | bash
fi

# FNM (Fast Node Manager)
read -p "Do you want to install fnm? (y/n): " install_fnm
if [ "$install_fnm" == "y" ]; then
    bash -c "$(curl -fsSL https://fnm.vercel.app/install)"
fi

chsh -s $(which zsh)
clear
sh
