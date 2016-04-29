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
#OK
rm -f core-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/core-site.xml
# only on master
rm -f mapred-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/mapred-site.xml
#OK
rm -f hdfs-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/master-hdfs/hdfs-site.xml
#OK
rm -f yarn-site.xml
wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/yarn-site.xml
#OK
rm -f hadoop-env.sh
wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/hadoop-env.sh

#OK
#rm -f slaves
#wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/slaves
#OK
#wget https://raw.githubusercontent.com/jmargieh/hadoop_single_node_cluster/master/masters
