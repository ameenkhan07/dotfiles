# Install JAVA (Hadoop|Spark|Scala)
# http://www.tutorialspoint.com/hbase/hbase_installation.htm
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Installing Scala
wget -O ~/Downloads/scala/scala.deb http://www.scala-lang.org/files/archive/scala-2.11.6.deb
sudo dpkg -i ~/Downloads/scala/scala.deb
sudo apt-get update && sudo apt-get install scala
rm -rf ~/Downloads/scala/scala.deb
# Installing SBT
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update && sudo apt-get install sbt
# Installing Conscript, Giter8
curl https://raw.githubusercontent.com/foundweekends/conscript/master/setup.sh | sh # export PATH=$PATH:~/.conscript/bin
cs foundweekends/giter8

#Installing Spark
mkdir ~/Downloads/Spark/
wget -O ~/Downloads/Spark/spark.tgz http://d3kbcqa49mib13.cloudfront.net/spark-2.0.0-bin-hadoop2.7.tgz
tar xvf ~/Downloads/Spark/spark*.tgz -C ~/Downloads/Spark/
mv ~/Downloads/Spark/spark*/ ~/Downloads/Spark/spark/
sudo mv ~/Downloads/Spark/spark/ /usr/local/spark


# Installing HBASE

mkdir -p ~/Downloads/Hadoop/
wget -O ~/Downloads/Hadoop/hbase.tar.gz http://mirror.fibergrid.in/apache/hbase/stable/hbase-1.2.2-bin.tar.gz
tar zxvf ~/Downloads/Hadoop/hbase.tar.gz -C ~/Downloads/Hadoop/
mv ~/Downloads/Hadoop/hbase*/ ~/Downloads/Hadoop/hbase/
sudo mv ~/Downloads/Hadoop/hbase/ /usr/local/HBase/

# HADOOP SETUP

## Hadoop User
useradd hadoop
passwd hadoop

# SSH setup | Required for Cluster Daemon shell operations | Authenticate different hadoop users
# ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
# Enable SSH access to your local machine with this newly created key.
chmod 0600 ~/.ssh/authorized_keys

sudo mkdir -p /app/hadoop/tmp
sudo chown hadoop /app/hadoop/tmp

# Installing Hadoop

mkdir ~/Downloads/Hadoop/
wget -O ~/Downloads/Hadoop/hadoop.tar.gz http://mirror.fibergrid.in/apache/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
tar xvf ~/Downloads/Hadoop/hadoop.tar.gz -C ~/Downloads/Hadoop/
mv ~/Downloads/Hadoop/hadoop* ~/Downloads/Hadoop/hadoop
sudo mv ~/Downloads/Hadoop/hadoop/ /usr/local/hadoop
###Config
# Configure hdfs-site.xml|core_site.xml|mapred-site.xml|yarn-site.xml
# export HADOOP_HOME=/usr/local/hadoop
# export HADOOP_MAPRED_HOME=$HADOOP_HOME
# export HADOOP_COMMON_HOME=$HADOOP_HOME
# export HADOOP_HDFS_HOME=$HADOOP_HOME
# export YARN_HOME=$HADOOP_HOME
# export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
# export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
# export HADOOP_INSTALL=$HADOOP_HOME


#Installing Apache Phoenix

wget -O ~/Downloads/Hadoop/phoenix.tar.gz http://mirror.fibergrid.in/apache/phoenix/apache-phoenix-4.8.0-HBase-0.98/bin/apache-phoenix-4.8.0-HBase-0.98-bin.tar.gz
tar zxvf ~/Downloads/Hadoop/phoenix.tar.gz -C ~/Downloads/Hadoop/
