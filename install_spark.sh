#!/bin/sh

if [ -d "/home/vagrant/spark-1.6.1-bin-hadoop2.6" ]; then
        echo "There's already an installation of Hadoop in /home/vagrant/spark-1.6.1-bin-hadoop2.6"
        echo "Skipping..."
        hadoop version
        exit 0
fi

sudo apt-get install wget curl -y
echo "Downloading & Setup Spark!"
wget http://www-eu.apache.org/dist/spark/spark-1.6.1/spark-1.6.1-bin-hadoop2.6.tgz

#extract file
tar -xzf spark-1.6.1-bin-hadoop2.6.tgz

# delete the file
rm spark-1.6.1-bin-hadoop2.6.tgz