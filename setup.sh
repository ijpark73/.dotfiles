#! /bin/bash

echo "======================================================================"
echo " Installing zsh, oh-my-zsh....                                        "
echo "======================================================================"

sudo apt-get install -y zsh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#sudo chsh -s $(which zsh) $(whoami)

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "======================================================================"
echo " Installing vim, Vundle plugin....                                        "
echo "======================================================================"

sudo apt-get install -y vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "======================================================================"
echo " Copying dotfiles....                                                 "
echo "======================================================================"

ln -sf ${PWD}/zshrc ~/.zshrc
ln -sf ${PWD}/vimrc ~/.vimrc

zsh
echo "======================================================================"
echo " Completed...							    "
echo "======================================================================"
