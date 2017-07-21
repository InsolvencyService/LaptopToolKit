#
# script: install-ansible
# Description: Setup ansible from PPA on Ubuntu Machine
# Author: Tom Withers
# Changelog: Initial version
#

echo
echo "Updating apt lists."
sudo apt-get update
echo "Installing software-properties-common."
sudo apt-get install -y software-properties-common

echo "Installing Ansible dependencies."
sudo apt-get install -y python-yaml python-jinja2 python-paramiko python-crypto

echo "Installing ansible from ansible ppa repository."
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
echo
echo "Ansible has been installed"
