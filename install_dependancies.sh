#!/usr/bin/env bash
# update repos
apt-get update
# install pip
apt-get install python-pip build-essential libssl-dev libffi-dev python-dev -y
# upgrade pip to latest version
pip install pip --upgrade
# install ansible
pip install ansible setuptools==11.3