#!/bin/bash
oc project parks-app

for i in $(oc get deployment -o name)
do
oc scale ${i} --replicas=1
done

for i in $(oc get deploymentconfig -o name)
do
oc scale ${i} --replicas=1
done

