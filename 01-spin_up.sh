#!/bin/bash

minikube config set WantReportErrorPrompt false # To optout from sending anonymized crash report
minikube config get vm-driver
minikube config set vm-driver xhyve
minikube config get vm-driver
minikube delete # Clean any old version
minikube start # Start a cluster
kubectl config use-context minikube # switch context to minikube
