#!/bin/sh

sudo rm -rf /usr/local/hadoop/hadoop_data/
sudo mkdir -p /usr/local/hadoop/hadoop_data/hdfs/namenode
sudo mkdir -p /usr/local/hadoop/hadoop_data/hdfs/datanode
sudo chmod -R 775 /usr/local/hadoop/

sudo rm -rf /home/vagrant/hadoop-2.7.2/tmp/
sudo mkdir -p /home/vagrant/hadoop-2.7.2/tmp/
sudo chmod -R 775 /home/vagrant/hadoop-2.7.2/tmp/


cd /home/vagrant/hadoop-2.7.2/etc/hadoop/

#get configuration files

rm -f core-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/files/hadoop/core-site.xml

rm -f mapred-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/files/hadoop/mapred-site.xml

rm -f hdfs-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/files/hadoop/hdfs-site.xml

rm -f yarn-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/files/hadoop/yarn-site.xml

rm -f hadoop-env.sh
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/files/hadoop/hadoop-env.sh
