#!/bin/bash
apt update -y
apt upgrade -y
apt install snapd
snap install kubectl --classic;
apt -y install git-all
apt -y install docker.io
apt -y install default-jdk
