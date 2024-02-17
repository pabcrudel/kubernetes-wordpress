#!/bin/bash

echo
echo Deploying Wordpress
kubectl apply -f wordpress-deployment.yml
echo Done

echo
echo Deploying MySQL
kubectl apply -f mysql-deployment.yml
echo Done

echo
echo Deploying CluesterIP
kubectl apply -f cluster-ip.yml
echo Done

echo
echo Deploying Load Balancer
kubectl apply -f load-balancer.yml
echo Done

wp_lb_port=$(kubectl get svc wordpress-loadbalancer \
 -o jsonpath='{.spec.ports[0].port}')

echo
echo "Wordpress is available here http://localhost:$wp_lb_port"