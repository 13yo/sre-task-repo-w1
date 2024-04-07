#!/bin/bash

kubectl delete configmap/prometheus-alertmanager -n sre

envsubst < slack-alert.yml | kubectl apply -n sre -f -