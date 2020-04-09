#!/bin/bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_1.9.1-0_amd64.deb \
 && sudo dpkg -i minikube_1.9.1-0_amd64.deb
# Set more then 6gb standard mem
minikube config set memory 8096
# Set Default driver
minikube config set driver docker
minikube start -p minikube --driver=docker


