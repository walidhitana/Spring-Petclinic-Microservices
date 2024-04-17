#!/bin/bash

# Création de l'espace de nommage "spring-petclinic"
kubectl create namespace spring-petclinic

# Configuration du contexte actuel pour utiliser l'espace de nommage "spring-petclinic"
kubectl config set-context --current --namespace=spring-petclinic

# Déploiement des configurations des différents services
kubectl apply -f kubernetes/deployments/config-server-deployment.yml
kubectl apply -f kubernetes/deployments/discovery-server-deployment.yml
kubectl apply -f kubernetes/deployments/admin-server-deployment.yml
kubectl apply -f kubernetes/deployments/api-gateway-deployment.yml
kubectl apply -f kubernetes/deployments/customers-service-deployment.yml
kubectl apply -f kubernetes/deployments/visits-service-deployment.yml
kubectl apply -f kubernetes/deployments/vets-service-deployment.yml
kubectl apply -f kubernetes/deployments/tracing-server-deployment.yml

# Création des services pour les différents déploiements
kubectl apply -f kubernetes/services/config-server-service.yml
kubectl apply -f kubernetes/services/discovery-server-service.yml
kubectl apply -f kubernetes/services/admin-server-service.yml
kubectl apply -f kubernetes/services/api-gateway-service.yml
kubectl apply -f kubernetes/services/customers-service-service.yml
kubectl apply -f kubernetes/services/visits-service-service.yml
kubectl apply -f kubernetes/services/vets-service-service.yml
kubectl apply -f kubernetes/services/tracing-server-service.yml

# Configuration des règles d'ingress pour exposer les services
kubectl apply -f kubernetes/ingress/api-gateway-ingress.yml
kubectl apply -f kubernetes/ingress/customers-service-ingress.yml
kubectl apply -f kubernetes/ingress/visits-service-ingress.yml
kubectl apply -f kubernetes/ingress/vets-service-ingress.yml