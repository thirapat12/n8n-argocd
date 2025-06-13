#!/bin/bash

curl -X POST http://localhost:5678/webhook/argocd-sync \
  -H "Content-Type: application/json" \
  -d '[
        {"app":"experience","commit":"1e078b1"}
      ]'
