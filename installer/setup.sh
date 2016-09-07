# CLI Apps
sudo apt-get install ranger
sudo apt-get install httpie
sudo apt-get install youtube-dl
sudo apt-get install terminator
sudo update-alternatives --config x-terminal-emulator

# Python Stuff
sudo apt-get install python
sudo apt-get install python3

## PIP Virtualenv Installs
wget -O ~/Downloads/get_pip.py https://bootstrap.pypa.io/get-pip.py
sudo python ./Downloads/get_pip.py
sudo pip install virtualenv
rm -rf ~/Downloads/get_pip.py
## Niche Pythons
sudo pip install sniffer #Continuous testing on python
## Anaconda
wget -O ~/Downloads/anaconda.sh http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash ~/Downloads/anaconda.sh
rm -rf ~/Downloads/anaconda.sh

# Node
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Nginx
sudo apt-get install nginx

# Editors and IDE
sudo apt-get install vim
sudo apt-get install emacs

## ATOM
wget -O ~/Downloads/atom.deb https://atom.io/download/deb && sudo dpkg -i atom.deb && sudo apt-get -f install # Install Atom's dependencies if they are missing
rm -rf ~/Downloads/atom.deb	

## Sublime Text 3
wget -O ./Downloads/Sublime.deb https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
sudo dpkg -i ./Downloads/Sublime.deb
sudo apt-get install -f 
rm -rf ./Downloads/Sublime.deb

## IntelliJ IDE (OPTIONAL)
wget -O ~/Downloads/idea.tar.gz https://download.jetbrains.com/idea/ideaIU-2016.2.2.tar.gz
tar xzf ~/Donwloads/idea.tar.gz
rm -rf ~/Downloads/idea.tar.gz


# SWAG
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install numix-gtk-theme numix-icon-theme-circle
sudo apt-get install numix-wallpaper-*
sudo apt-get install unity-tweak-tool
## CALIBRE
sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
## ZEAL
sudo apt-get install zeal
## VLC
sudo apt-get install vlc
