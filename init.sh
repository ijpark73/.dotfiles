#! /bin/bash
# Swap Memory setting
sudo swapon -s
sudo fallocate -l 3GB /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sh -c 'echo "/swapfile     none    swap    sw      0       0">>/etc/fstab'

# Necessary Utils setting
sudo apt update
sudo apt install -y build-essential language-pack-ko vim git wget curl net-tools dnsutils zsh

# Oh-My-Zsh setting
sudo passwd root
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) $(whoami)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

wget https://raw.githubusercontent.com/ijparking/.dotfiles/master/zshrc
mv zshrc .zshrc
source .zshrc

# VIM setting
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget https://raw.githubusercontent.com/ijparking/.dotfiles/master/vimrc
mkdir .vim/syntax
wget https://www.vim.org/scripts/download_script.php?src_id=21056
mv download_script* .vim/syntax/python.vim

# Language Installation
sudo apt install -y python3 python3-dev python3-pip
python3 -m pip3 install --upgrade pip

curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt update
sudo apt install -y nodejs
