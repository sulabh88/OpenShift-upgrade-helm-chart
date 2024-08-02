#!/bin/bash

# wait for cluster to finish update
STATUS="True"
oc get clusterversion version
while [ $STATUS == "True" ]
do
   STATUS=$(oc get clusterversion version -o jsonpath='{.status.conditions[?(@.type=="Progressing")].status}{"\n"}')
   oc get clusterversion version --no-headers
   sleep 5
done

# wait for mcp to finish update
UPDATING=1
while [ $UPDATING != "0" ]
do
    UPDATING=$(oc get mcp -o jsonpath="{.items[*].status.conditions[?(@.type=='Updated')].status}" | grep -c False)
    oc get mcp
    sleep 5
done

# wait for co to finish update
UPDATING=1
while [ $UPDATING != "0" ]
do
    UPDATING=$(oc get co -o jsonpath="{.items[*].status.conditions[?(@.type=='Progressing')].status}" | grep -c True)
    oc get co
    sleep 5
done
