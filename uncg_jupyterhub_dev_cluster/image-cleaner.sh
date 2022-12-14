#! /bin/bash

# Register the EnableImageCleanerPreview feature flag by using the az feature register
# az feature register --namespace "Microsoft.ContainerService" --name "EnableImageCleanerPreview"

# Verify the registration status by using the az feature list command:
#az feature list -o table --query "[?contains(name, 'Microsoft.ContainerService/EnableImageCleanerPreview')].{Name:name,State:properties.state}"

# When ready, refresh the registration of the Microsoft.ContainerService resource provider by using the az provider register command:
#az provider register --namespace Microsoft.ContainerService

# To enable on an existing AKS cluster, use az aks update:
SubscriptionName="CCI Lab"
ResourceGroupName=RG_DevCluster
ClusterName=devclusters
az aks update -g $ResourceGroupName -n $ClusterName --enable-image-cleaner
