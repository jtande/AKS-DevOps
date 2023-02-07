#! /bin/bash

# Original script from here
# https://docs.microsoft.com/en-us/azure/aks/ingress-tls

# configure an FQDN for the ingress controller IP address
# Public IP address of your ingress controller
IP="20.81.0.27"

# Name to associate with public IP address
DNSNAME="ism210jhub"

# Get the resource-id of the public ip
PUBLICIPID=$(az network public-ip list --query "[?ipAddress!=null]|[?contains(ipAddress, '$IP')].[id]" --output tsv)

# Update public ip address with DNS name
az network public-ip update --ids $PUBLICIPID --dns-name $DNSNAME

# Display the FQDN
FQDN=$(az network public-ip show --ids $PUBLICIPID --query "[dnsSettings.fqdn]" --output tsv)

echo "  "
echo "  " 
echo " Got FQDN "
echo "  "
echo " "
echo $FQDN
echo "  "
echo "  "
