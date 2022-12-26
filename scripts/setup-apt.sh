#!/bin/bash


echo "Setting up debian lists..."
sudo curl -sSL https://raw.githubusercontent.com/Greenroom-Robotics/packages/main/debian/keyring.asc -o /etc/apt/trusted.gpg.d/greenroom-robotics-public-packages-keyring.asc
sudo curl -SsL -o /etc/apt/sources.list.d/greenroom-robotics-public-packages.list https://raw.githubusercontent.com/Greenroom-Robotics/public_packages/main/debian/greenroom-robotics-public-packages.list
