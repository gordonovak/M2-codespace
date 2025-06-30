#!/bin/bash
set -e  # Stop on error

echo "========== STARTING SETUP =========="

echo "Updating package lists..."
sudo apt update

sudo add-apt-repository ppa:canonical-server/server-backports
sudo apt-get update
sudo apt-get upgrade qemu-user-static

echo "Installing dependencies..."
sudo apt install -y software-properties-common curl

echo "Adding Macaulay2 PPA..."
sudo add-apt-repository ppa:macaulay2/macaulay2
sude apt update
sudo apt install macaulay2 
