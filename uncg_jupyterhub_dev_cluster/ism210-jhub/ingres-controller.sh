#! /bin/bash
NAMESPACE=ism210-jhub

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install ism210-ingress-nginx ingress-nginx/ingress-nginx \
  --create-namespace \
  --namespace $NAMESPACE \
  --set controller.service.annotations."service\.beta\.kubernetes\.io/azure-load-balancer-health-probe-request-path"=/healthz
