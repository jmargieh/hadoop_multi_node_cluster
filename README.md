
Hadoop 2.7.2 Multi Node Cluster Setup
-------------
Clone this project to create a 2 - master/slave nodes Apache Hadoop cluster
```sh
$ git clone https://github.com/jmargieh/hadoop_multi_node_cluster.git
```
**Prerequisites:** : Vagrant & VirtualBox

Deploying the cluster
-------------
After cloning this repository, change into the directory and run:
```sh
./start.sh
```
This will set up 2 machines - master, slave. Each of them will have a CPU and 2048MB of RAM. If this is too much for your machine, adjust the Vagrantfile to match your needs.

The `master` machine acts as the datanode, namenode, secondarynamenode and the yarn resourcemanager, the slave acts as a data node and runs node manager.


Testing
-------------
```sh
$ sudo /usr/lib/jvm/jdk1.8.0_77/bin/jps
```
inspect ResourceManager, DataNode & NameNode in `master` & DataNode, NamdeNode in `slave`

```sh
$ hadoop jar ../share/hadoop/yarn/hadoop-yarn-applications-distributedshell-2.7.2.jar \org.apache.hadoop.yarn.applications.distributedshell.Client \--jar ../share/hadoop/yarn/hadoop-yarn-applications-distributedshell-2.7.2.jar \--shell_command date --num_containers 2 --master_memory 1024
```
to run distrebuted shell.

```sh
$ hadoop jar ../share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.2.jar randomwriter \out
```
to run a mapreduce job

```sh
open your browser & navigate - http://70.68.47.19:8088/cluster/cluster
```
to view YARN web user interface

Screenshots
-------------

Distributed shell output
-------------
![distributed shell output](https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/distributed-shell-succeed.png)

randomwriter mapreduce output
-------------
![mapreduce output](https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/randomwriter-mapreduce-success.png)

Testing communication between master-slave
-------------
![master slave communication](https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/master-slave-comunication.png)
