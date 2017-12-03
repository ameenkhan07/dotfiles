# Install Vim Package manager for good measure
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


### Pre Reqs for YouCompleteMe Plugin
# cd ~/.vim/bundle/YouCompleteMe; git submodule update --init --recursive  # Incase Vundle screws up
cd ~/.vim/bundle/YouCompleteMe;./install.py --all
