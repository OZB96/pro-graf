#!/bin/bash
kubectl create namespace monitor
helm install prometheus-operator stable/prometheus-operator --namespace monitor --set grafana.service.type=LoadBalancer
kubectl apply -f ingress.yaml -n monitor
