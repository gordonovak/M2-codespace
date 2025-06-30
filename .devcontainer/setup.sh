#!/bin/bash
set -e  # Stop on error

echo "========== STARTING SETUP =========="

echo "Updating package lists..."
sudo apt -y update

echo "Installing dependencies..."
sudo apt install -y software-properties-common curl

echo "Adding Macaulay2 PPA..."
sudo DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:macaulay2/macaulay2
sudo apt -y update
sudo DEBIAN_FRONTEND=noninteractive apt -y install macaulay2 
