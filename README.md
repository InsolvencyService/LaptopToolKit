## Introduction

New starters to the Insolvency Service can downlaod this repository and setup there development environment for ubuntu. Using Ansible this process is completely automated!

## Installation
First, you need to install Ansible :
```
git clone git@github.com:InsolvencyService/LaptopToolKit.git
cd LaptopToolKit
./install-ansible.sh
```

Run ```ansible-playbook ansible-setup.yml --ask-become-pass```

## Roles

Below is the list of software that Ansible will install. if you have any more requests please open a github ticket!