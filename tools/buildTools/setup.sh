#!/usr/bin/bash

bashrc_code="
if [ -f /opt/robocomp/share/rccd.sh ]; then
    . /opt/robocomp/share/rccd.sh
fi"

bashrc_code_rbcd="
if [ -f /opt/robocomp/share/rbcd ]; then
    . /opt/robocomp/share/rbcd
fi"

if [ -f ~/.bashrc ]; then
    exist=$(cat ~/.bashrc | grep "/opt/robocomp/share/rccd.sh")
    if [ -z "$exist" ]; then
      echo "rccd code instaled in ~/.bashrc"
      echo "$bashrc_code" >> ~/.bashrc
    else
      echo "Installation of rccd already exist in ~/.bashrc"
    fi

    exist_rbcd=$(cat ~/.bashrc | grep "/opt/robocomp/share/rbcd")
    if [ -z "$exist_rbcd" ]; then
      echo "rbcd code instaled in ~/.bashrc"
      echo "$bashrc_code_rbcd" >> ~/.bashrc
    else
      echo "Installation of rbcd already exist in ~/.bashrc"
    fi


fi

