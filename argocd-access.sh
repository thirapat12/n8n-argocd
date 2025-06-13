#!/bin/bash

echo "Logging in to ArgoCD..."
# Login to ArgoCD server
TOKEN=$(curl -k -X POST http://argocd.localhost/api/v1/session \
  -H "Content-Type: application/json" \
  -d '{"username": "admin", "password": "jQLqwDIrvC9XTHR9"}' | jq -r '.token')

echo "Token received: $TOKEN"

echo "Login successful."
curl -k GET "http://argocd.localhost/api/v1/applications" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Accept: application/json" \
  | jq
