## Introduction

New starters to the Insolvency Service can download this repository and setup there development environment for ubuntu. Using Ansible this process is completely automated!

---

### Usage

First, you need to install Ansible :
```
git clone git@github.com:InsolvencyService/LaptopToolKit.git
cd LaptopToolKit
./install-ansible.sh
```

Run ```ansible-playbook ansible-setup.yml --ask-become-pass```



This playbook currently works with
- [x] Ubuntu 16.04

---

### Roles

Below is the list of software that Ansible will install. if you have any more requests please open a github ticket!


| Package Name        | Tag           |
| ------------------- |:-------------:|
|Java JDK             |               |
|PostgresSQL          |               |
|Virtual Box          |               |
|Vagrant              |               |
|Vagrant-vbguest      |               |
|Vagrant-reload       |               |
|Python pip           |               |
|Pyhton Virtual Env   |               |
|Chrome               |               |
|JetBrains ToolBox    |               |
|Docker CE            |               |
|Docker Compose       |               |
|JenkinsJob Builder   |               |
|Slack                |               |
|Selenium             |               |
|Node Package Manager |               |
|PhantomJS            |               |
|FireFox Client       |               |
|Chrome Client        |               |
|Ruby                 |               |
|VCloud Tools         |               |
|RDesktop             |               |
|Vim                  |               |
|NCDU                 |               |
|Tree                 |               |
|Whois                |               |
|Htop                 |               |
|terminator           |               |
|Curl                 |               |


You can also use tags to install individual applications.

Run ```ansible-playbook ansible-setup.yml --ask-become-pass  --tags "PLACE_YOUR_TAG_HERE""```

---

### Contributing

If your part of our organisation and would like a tool added please raise an Issue on this repository!

