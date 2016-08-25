# Installation of MySQL Using MySQL APT Respository

# Fresh Install http://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/#apt-repo-fresh-install
wget -O ~/Downloads/mysql/mysql.deb http://dev.mysql.com/get/mysql-apt-config_0.7.3-1_all.deb
sudo dpkg -i ~/Downloads/mysql/mysql.deb
sudo apt-get install -f
sudo apt-get install mysql-server

#sudo service mysql status
#sudo service mysql stop
#sudo service mysql start

# MySQL Python Connector
wget -O ~/Downloads/mysqlconnectorpython.tar.gz https://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python-2.1.3.tar.gz
tar xzf ~/Downloads/mysql/mysqlconnectorpython.tar.gz
python ~/Downloads/mysql/mysql-connector-python-2.1.3/setup.py install

#Installation of MySQL Util
wget -O ~/Downloads/mysql/mysqlUtils.tar.gz http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-utilities-1.5.6.tar.gz
tar xzf ~/Downloads/mysql/mysqlUtils.tar.gz
python ~/Downloads/mysql/mysql-utilities-1.6.4/setup.install

rm -rf ~Downloads/mysql/


# Random Install
sudo apt-get install python-dev