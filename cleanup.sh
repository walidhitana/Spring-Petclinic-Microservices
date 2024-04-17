#!/bin/bash

# Création de l'espace de nommage "spring-petclinic"
kubectl create namespace spring-petclinic

# Configuration du contexte actuel pour utiliser l'espace de nommage "spring-petclinic"
kubectl config set-context --current --namespace=spring-petclinic

# Suppression des déploiements
kubectl delete deploy config-server
kubectl delete deploy discovery-server
kubectl delete deploy admin-server
kubectl delete deploy customers-service
kubectl delete deploy visits-service
kubectl delete deploy vets-service
kubectl delete deploy api-gateway

# Suppression des services
kubectl delete svc config-server
kubectl delete svc discovery-server
kubectl delete svc admin-server
kubectl delete svc customers-service
kubectl delete svc visits-service
kubectl delete svc vets-service
kubectl delete svc api-gateway

# Suppression des règles d'ingress
kubectl delete ingress config-server
kubectl delete ingress discovery-server
kubectl delete ingress admin-server
kubectl delete ingress customers-service
kubectl delete ingress visits-service
kubectl delete ingress vets-service
kubectl delete ingress api-gateway
