#!/bin/bash
oc project sock-shop

for i in $(oc get deployment -o name)
do
oc scale ${i} --replicas=1
done

for i in $(oc get deploymentconfig -o name)
do
oc scale ${i} --replicas=1
done

