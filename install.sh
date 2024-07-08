#!/usr/bin/env bash

helm repo add argo https://argoproj.github.io/argo-helm
helm install -n argocd argocd argo/argo-cd --values argocd/values.yaml --create-namespace
helm install -n argocd argocd-apps argo/argocd-apps --values argocd-apps/init-values.yaml
