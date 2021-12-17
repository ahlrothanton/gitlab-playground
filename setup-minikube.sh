#!/usr/bin/env bash


# setup minikube
minikube start --cpus 4 --memory 10240
minikube addons enable ingress

sleep 1
clear
echo
echo "Minikube ready. Minikube IP: $(minikube ip)"
echo
sleep 1
