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
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/core-site.xml

rm -f mapred-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/mapred-site.xml

rm -f hdfs-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/master-hdfs/hdfs-site.xml

rm -f yarn-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/yarn-site.xml

rm -f hadoop-env.sh
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/hadoop-env.sh
#memory configurations
rm -f yarn-env.sh
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/yarn-env.sh

rm -f mapred-env.sh
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/mapred-env.sh

rm -f slaves
wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/slaves

wget https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/masters
