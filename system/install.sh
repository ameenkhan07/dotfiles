# CLI Apps
sudo apt-get -y install ranger
sudo apt-get -y install httpie
sudo apt-get -y install youtube-dl
sudo apt-get -y install terminator
sudo update-alternatives --config x-terminal-emulator
sudo apt-get -y install screen
sudo apt-get -y install silversearcher-ag
sudo apt-get -y install cowsay

# GIT
sudo apt-get -y install git
sudo apt-get -y install gitk
sudo apt-get -y install git-extras

# SSH
sudo apt-get -y install ssh
# Keygens
ssh-keygen -t rsa -b 4096 -C "ameenkhan07@gmail.com"

# Node
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get -y install -y nodejs
#sudo apt-get install nodejs

# Nginx| For local virtual hosting
sudo apt-get -y install nginx

# Editors and IDE

##CLI
sudo apt-get -y install vim
sudo apt-get -y install emacs

## ATOM
wget -O ~/Downloads/atom.deb https://atom.io/download/deb && sudo dpkg -i atom.deb && sudo apt-get -f -y install # -y Install Atom's dependencies if they are missing
rm -rf ~/Downloads/atom.deb	

## Sublime Text 3
wget -O ./Downloads/Sublime.deb https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
sudo dpkg -i ./Downloads/Sublime.deb
sudo apt-get -y install -f 
rm -rf ./Downloads/Sublime.deb

## IntelliJ IDE (OPTIONAL)
wget -O ~/Downloads/idea.tar.gz https://download.jetbrains.com/idea/ideaIU-2016.2.2.tar.gz
tar xzf ~/Downloads/idea.tar.gz 
rm -rf ~/Downloads/idea.tar.gz
mv ~/Downloads/ideaIU-2016*/ ~/


# SWAG
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get -y install numix-gtk-theme numix-icon-theme-circle
sudo apt-get -y install numix-wallpaper-*
sudo apt-get -y install unity-tweak-tool
## CALIBRE
# sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
## ZEAL
sudo apt-get -y install zeal
## VLC
sudo apt-get -y install vlc
# I3 Multiscren manager
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated -y install sur5r-keyring
sudo apt-get update
sudo apt-get -y install i3
