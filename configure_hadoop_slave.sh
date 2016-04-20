#!/bin/sh

sudo rm -rf /usr/local/hadoop/hadoop_data/
sudo mkdir -p /usr/local/hadoop/hadoop_data/hdfs/namenode
sudo mkdir -p /usr/local/hadoop/hadoop_data/hdfs/datanode
sudo chmod -R 775 /usr/local/hadoop/

#sudo mkdir -p /home/vagrant/hadoop-2.7.2/hdfs/namenode
#sudo chmod -R 775 /home/vagrant/hadoop-2.7.2/hdfs/namenode
#sudo mkdir -p /home/vagrant/hadoop-2.7.2/hdfs/datanode
#sudo chmod -R 775 /home/vagrant/hadoop-2.7.2/hdfs/datanode


cd /home/vagrant/hadoop-2.7.2/etc/hadoop/

#get configuration files
#OK
rm -f core-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_cluster/master/core-site.xml
#OK
rm -f hdfs-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_cluster/master/slave-hdfs/hdfs-site.xml
#OK
rm -f yarn-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_cluster/master/yarn-site.xml