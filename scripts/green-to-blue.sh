#!/bin/bash
kubectl apply -f green-deployment.yaml
kubectl set image deployment/notification-service-green notification-service=hasaliit/notification-service:${GITHUB_SHA} --record
