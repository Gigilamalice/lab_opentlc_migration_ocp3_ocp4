#!/bin/bash
oc scale deploymentconfig mssql-deployment --replicas=0 -n mssql-persistent
oc scale deployment mssql-app-deployment --replicas=0 -n mssql-persistent
oc scale deploymentconfig mssql-deployment --replicas=1 -n mssql-persistent
oc scale deployment mssql-app-deployment --replicas=1 -n mssql-persistent
