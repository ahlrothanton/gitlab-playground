#!/usr/bin/env bash


# setup GitLab
helm repo add gitlab https://charts.gitlab.io/
helm repo update
helm upgrade --install gitlab gitlab/gitlab \
  -f ./gitlab-values.yaml \
  --set global.hosts.domain=$(minikube ip).nip.io \
  --set global.hosts.externalIP=$(minikube ip)

# get GitLab URI
GITLAB_URI=$(kubectl get ing|grep gitlab-webservice|awk '{print $3}')

# get GitLab secret
GITLAB_PW=$(kubectl get secret gitlab-gitlab-initial-root-password -ojsonpath='{.data.password}' | base64 -d)

sleep 1
clear
echo
echo "Access GitLab at ${GITLAB_URI} with credentials root / ${GITLAB_PW}"
echo
sleep 1
