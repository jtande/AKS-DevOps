#! /bin/bash

#add jupyterhub to helm repository and update
#helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

#Install jhub on cluster
helm upgrade --cleanup-on-fail \
	--install jhub-ism210 jupyterhub/jupyterhub \
	--namespace ism210-jhub \
	--create-namespace \
	--version=2.0.0 \
	--values jhub-publish.yaml \
	--timeout 10m0s
