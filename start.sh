#! /bin/bash

vagrant up
vagrant ssh nodeA -c "./after_startup.sh"
vagrant ssh nodeB -c "./after_startup.sh"