#!/bin/bash

echo
echo Deleting Wordpress
kubectl delete -f ../wordpress-deployment.yml
echo Done

echo
echo Deleting MySQL
kubectl delete -f ../mysql-deployment.yml
echo Done

echo
echo Deleting CluesterIP
kubectl delete -f ../cluster-ip.yml
echo Done

echo
echo Deleting Load Balancer
kubectl delete -f ../load-balancer.yml
echo Done

echo
echo All services are deleted
