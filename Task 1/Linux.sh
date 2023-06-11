#!/bin/bash
echo "Updating repositories"
sudo apt-get update -y >> Linux.log

echo "Upgrading system"
sudo apt-get upgrade -y >> Linux.log