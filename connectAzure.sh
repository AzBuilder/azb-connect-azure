#!/bin/bash

if [[ $MSI = "true" ]]; 
then
    az login --identity --allow-no-subscriptions;
else
    az login --service-principal -u $SP_USER -p=$SP_PASSWORD --tenant $SP_TENANT --allow-no-subscriptions;
fi
