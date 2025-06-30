#!/bin/bash
set -e  # Stop on error

echo "========== STARTING SETUP =========="

echo "Updating package lists..."
sudo apt update

echo "Installing dependencies..."
sudo apt install -y software-properties-common curl

echo "Adding Macaulay2 PPA..."
sudo add-apt-repository -y ppa:macaulay2/macaulay2
echo "\n"
sude apt update
sudo apt install macaulay2 
