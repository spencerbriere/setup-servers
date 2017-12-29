#!/bin/bash
if [ "$EUID" -e 0 ]
  then echo "Please run as Pi."
  exit
fi
echo "1. Change password. You will be prompted to change your password."
read -p "Press any key to continue... " -n1 -s
passwd

echo "2. Enable SSH. You will be prompted to enable SSH."
read -p "Press any key to continue... " -n1 -s

sudo raspi-config
