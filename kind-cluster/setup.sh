# Create a Kubernetes cluster and set it as the current kubectl context
kind create cluster --name argocd-previews
kubectl config use-context kind-argocd-previews

# Create a namespace and deploy Argo CD into it
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Patch Argo CD to stop ngrok ingress health from causing the Argo CD
# application to get stuck in a "progressing" status
kubectl patch configmap argocd-cm -n argocd --patch "$(cat argocd-cm.patch.yaml)"
kubectl rollout restart deployment/argocd-server -n argocd
