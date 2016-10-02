# Installing Vim
sudo apt-get update
sudo apt-get remove vim-tiny
sudo apt-get install vim-nox-py2 #Vim Flavour which related with xenial 

# Install Vim Package manager for good measure
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


### Pre Reqs for YouCompleteMe Plugin
# cd ~/.vim/bundle/YouCompleteMe; git submodule update --init --recursive  # Incase Vundle screws up
sudo apt-get install build-essential cmake # Clang Complete issue ycm
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe;./install.py --all
