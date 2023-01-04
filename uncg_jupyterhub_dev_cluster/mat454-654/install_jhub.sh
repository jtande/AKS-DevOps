#! /bin/bash

#add jupyterhub to helm repository and update
#helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
#helm repo update

#Install jhub on cluster
helm upgrade --cleanup-on-fail \
	--install jhub-mat454-654 jupyterhub/jupyterhub \
	--namespace mat454-mat654 \
	--create-namespace \
	--version=2.0.0 \
	--values jhub-config.yaml \
	--timeout 10m0s
