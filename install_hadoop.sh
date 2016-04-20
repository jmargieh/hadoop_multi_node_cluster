#!/bin/sh

if [ -d "/home/vagrant/hadoop-2.7.2" ]; then
        echo "There's already an installation of Hadoop in /home/vagrant/hadoop-2.7.2"
        echo "Skipping..."
        hadoop version
        exit 0
fi

sudo apt-get install wget curl -y
echo "Downloading & Setup Hadoop!" 
wget http://apache.mivzakim.net/hadoop/common/hadoop-2.7.2/hadoop-2.7.2.tar.gz

#extract file
tar -xzf hadoop-2.7.2.tar.gz

# delete the file
rm hadoop-2.7.2.tar.gz

#modify hadoop-env
cd /home/vagrant/hadoop-2.7.2/etc/hadoop/
sudo echo "export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_77" >> hadoop-env.sh
#sudo echo "export HADOOP_CONF_DIR=/home/vagrant/hadoop-2.7.2/etc/hadoop" >> hadoop-env.sh
#sudo echo "export HADOOP_OPTS=-Djava.library.path=$HADOOP_HOME/lib/native" >> hadoop-env.sh

#back to home folder 
cd /home/vagrant/

#set home variables
echo 'export HADOOP_HOME=/home/vagrant/hadoop-2.7.2' >> .bashrc
echo 'export HADOOP_MAPRED_HOME=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_COMMON_HOME=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_HDFS_HOME=$HADOOP_HOME' >> .bashrc
echo 'export YARN_HOME=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native' >> .bashrc
echo 'export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin' >> .bashrc
echo 'export HADOOP_INSTALL=$HADOOP_HOME' >> .bashrc
echo 'export HADOOP_OPTS=-Djava.library.path=$HADOOP_HOME/lib/native' >> .bashrc
echo "export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_77" >> .bashrc

echo "Hadoop & JAVA environment variables were set!"

 
 
 
 
 
 

