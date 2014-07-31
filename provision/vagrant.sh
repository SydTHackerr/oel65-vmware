#!/bin/bash

# If there are any files under /sw/home/vagrant, copy them to /home/vagrant
if [ -d /sw/home/vagrant ]; then

  cd /sw/home
  tar cf /tmp/vagrant-files.tar vagrant
  cd /home
  tar xvf /tmp/vagrant-files.tar
  rm /tmp/vagrant-files.tar

fi

