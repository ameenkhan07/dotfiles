#CLI Apps
sudo apt-get install ranger
sudo apt-get install vim
sudo apt-get install emacs
sudo apt-get install httpie
sudo apt-get install rtorrent
sudo apt-get install youtube-dl

sudo apt-get install hexchat

# Python Stuff
sudo apt-get install python
sudo apt-get install python3


#Sass
sudo apt-get install ruby
sudo su -c "gem install sass"
#  PIP Virtualenv Installs
wget -O ~/Downloads/get_pip.py https://bootstrap.pypa.io/get-pip.py
sudo python ./Downloads/get_pip.py
sudo pip install virtualenv

#Niche Pythons
sudo pip install sniffer #Continuous testing on python

# Anaconda
wget -O ./Downloads/anaconda.sh http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash ./Downloads/anaconda.sh

# Node Stuff
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Nginx
sudo apt-get install nginx

# ATOM
wget -O ~/Downloads/atom.deb https://atom.io/download/deb && sudo dpkg -i atom.deb && sudo apt-get -f install # Install Atom's dependencies if they are missing

#Sublime Text 3
wget -O ./Downloads/Sublime.deb https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
sudo dpkg -i ./Downloads/Sublime.deb
sudo apt-get install -f .

#ZSH Setup
sudo apt-get install zsh
chsh -s $(which zsh) #Change default shell to zsh
#OH My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# DOTFILES
git clone https://github.com/ameenkhan07/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap