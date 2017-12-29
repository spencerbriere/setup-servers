#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root."
  exit
fi

echo "1. Change password. You will be prompted to change your password."
read -p "Press any key to continue... " -n1 -s
echo ""
sudo -u "pi" passwd

echo "2. Enable SSH. You will be prompted to enable SSH."
echo "Steps are: 5 then P2 then <yes>, <ok> then <finish>"
read -p "Press any key to continue... " -n1 -s
echo ""
sudo raspi-config
