#! /bin/bash
#################################################################
# This is used to get the credentials of azure Kubernetes cluster.
# This will anable user to access resources as allowed by the admin
# More information can be find in the link below
# https://docs.microsoft.com/en-us/azure/aks/concepts-identity
# Make sure you have an azure account
# Synopsis:
# ./get_aks_dev_credential.sh | tee aks_dev_credential.out
#
# Information on the source website is not up to date
# 
#   Auth: Jacob Fosso Tande, UNCG 2020-12-15
#
##################################################################

echo " Setting up variable "
echo "         "
SubscriptionName="CCI Lab"
#ResourceGroupName=RG_DevCluster
#ClusterName=devclusters
ResourceGroupName=KubeAthena2021
ClusterName=KubeAthena

#az account set --subscription 5d977988-ecf6-4742-96f3-b60460b6a035
#az aks get-credentials --resource-group RG_DevCluster --name devcluster

echo " Done setting variable "

az aks get-credentials \
	--name $ClusterName \
	--resource-group $ResourceGroupName \
	--output table


# Once you have run the command above to connect to the cluster, 
# you can run any kubectl commands. Here are a few examples of useful commands to try.

# List all deployments in all namespaces
# kubectl get deployments --all-namespaces=true

# List all deployments in a specific namespace
# Format :kubectl get deployments --namespace <namespace-name>
# kubectl get deployments --namespace kube-system

# List details about a specific deployment
# Format :kubectl describe deployment <deployment-name> --namespace <namespace-name>
# kubectl describe deployment my-dep --namespace kube-system

# List pods using a specific label
# Format :kubectl get pods -l <label-key>=<label-value> --all-namespaces=true
# kubectl get pods -l app=nginx --all-namespaces=true

# Get logs for all pods with a specific label
# Format :kubectl logs -l <label-key>=<label-value>
# kubectl logs -l app=nginx --namespace kube-system



