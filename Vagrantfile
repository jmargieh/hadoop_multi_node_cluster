# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.define "nodeA" do |nodeA|
        nodeA.vm.box = "ubuntu/trusty64"
        nodeA.vm.hostname = "master"
        nodeA.vm.network "forwarded_port", guest: 8088, host: 8088#, host_ip: "70.68.47.19"
        nodeA.vm.provision "shell", inline: <<-SHELL

            # !!! YOU NEED TO REPLACE HERE CORRECT IP ADDRESS !!!

            sudo echo "70.68.47.19 master" >> /etc/hosts
            sudo echo "70.68.47.20 slave" >> /etc/hosts

            #sudo echo "master" >> /etc/hostname

            # Update VM to the latest binaries from distribution
            # package.
            sudo apt-get update && sudo apt-get upgrade -y
            sudo apt-get install -y vim telnet wget curl htop nmon

            # Installing and configuring java.
            cp /vagrant/install_java.sh .
            sudo chmod +x ./install_java.sh
            ./install_java.sh

            # Passwordless ssh communication between two virtual nodes.
            su vagrant -c "ssh-keygen -t rsa -P '' -f /home/vagrant/.ssh/id_rsa"
            mkdir -p /vagrant/files/ssh/
            cp /home/vagrant/.ssh/id_rsa.pub /vagrant/files/ssh/master.pub
            cp /vagrant/after_startup.sh /home/vagrant/.


            # TODO: In order to complete Hadoop configuration you have to
            # provide here set of Linux shell commands which completes
            # instalation and configuration of Hadoop cluster.

            cp /vagrant/install_hadoop.sh .
            sudo chmod +x ./install_hadoop.sh
            ./install_hadoop.sh

            cp /vagrant/configure_hadoop_master.sh .
            sudo chmod +x ./configure_hadoop_master.sh
            ./configure_hadoop_master.sh

            cp /vagrant/after_startup.sh .
            sudo chmod +x ./after_startup.sh
            cp /vagrant/start.sh .
            sudo chmod +x ./start.sh


        SHELL
    end

    config.vm.define "nodeB" do |nodeB|
        nodeB.vm.box = "ubuntu/trusty64"
        nodeB.vm.hostname = "slave"
        nodeB.vm.network "forwarded_port", guest: 8088, host: 9088#, host_ip: "70.68.47.20"
        nodeB.vm.provision "shell", inline: <<-SHELL

            # !!! YOU NEED TO REPLACE HERE CORRECT IP ADDRESS !!!
            sudo echo "70.68.47.20 slave" >> /etc/hosts
            sudo echo "70.68.47.19 master" >> /etc/hosts

            #sudo echo "slave" >> /etc/hostname

            # Update VM to the latest binaries from distribution
            # package.
            sudo apt-get update && sudo apt-get upgrade -y
            sudo apt-get install -y vim telnet wget curl htop nmon

            # Installing and configuring java.
            cp /vagrant/install_java.sh .
            sudo chmod +x ./install_java.sh
            ./install_java.sh


            # Passwordless ssh communication between two virtual nodes.
            su vagrant -c "ssh-keygen -t rsa -P '' -f /home/vagrant/.ssh/id_rsa"
            mkdir -p /vagrant/files/ssh/
            cp /home/vagrant/.ssh/id_rsa.pub /vagrant/files/ssh/slave.pub
            cp /vagrant/after_startup.sh /home/vagrant/.

            # TODO: In order to complete Hadoop configuration you have to
            # provide here set of Linux shell commands which completes
            # instalation and configuration of Hadoop cluster.

            cp /vagrant/install_hadoop.sh .
            sudo chmod +x ./install_hadoop.sh
            ./install_hadoop.sh

            cp /vagrant/configure_hadoop_slave.sh .
            sudo chmod +x ./configure_hadoop_slave.sh
            ./configure_hadoop_slave.sh

            cp /vagrant/after_startup.sh .
            sudo chmod +x ./after_startup.sh
            cp /vagrant/start.sh .
            sudo chmod +x ./start.sh

        SHELL
    end
end
