#! /bin/bash

KUBECONFIG="/home/orlandog/jorgegonzalez-k8s-nyc3-jogg-services-709804ab-kubeconfig.yaml"

ARGOCD_ADMIN_PASSWD=$(kubectl --kubeconfig=$KUBECONFIG -n argocd get secret argocd-initial-admin-secret -o=jsonpath='{.data.password}' | base64 -d)

echo "You super admin access password to argo cd: $ARGOCD_ADMIN_PASSWD"