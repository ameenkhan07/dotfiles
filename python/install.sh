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
sudo pip install cheat # Cheatsheets on commands

## Anaconda
wget -O ~/Downloads/anaconda.sh http://repo.continuum.io/archive/Anaconda3-4.1.1-Linux-x86_64.sh
bash ~/Downloads/anaconda.sh
rm -rf ~/Downloads/anaconda.sh