
Hadoop 2.7.2 Multi Node Cluster Setup
-------------
Clone this project to create a 2 - master/slave nodes Apache Hadoop cluster
```sh
$ git clone https://github.com/jmargieh/hadoop_multi_node_cluster.git
```
Deploying the cluster
-------------
After cloning this repository, change into the directory and run:
```sh
./start.sh
```
This will set up 2 machines - master, slave. Each of them will have a CPUs and .512MB of RAM. If this is too much for your machine, adjust the Vagrantfile to match your needs.

The `master` machine acts as the datanode, namenode and the yarn resourcemanager, the slave acts as a data node and runs node manager.


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


Screenshots
-------------
![distributed shell output](https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/distributed-shell-succeed.png)

![mapreduce output](https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/randomwriter-mapreduce-success.png)

![master slave communication](https://raw.githubusercontent.com/jmargieh/hadoop_multi_node_cluster/master/master-slave-comunication.png)
