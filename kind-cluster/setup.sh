# Create a Kubernetes cluster and set it as the current kubectl context
kind create cluster --name argocd-previews
kubectl config use-context kind-argocd-previews

# Create a namespace and deploy Argo CD into it
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Patch Argo CD to disable HTTPS, since ingress will take care of it
kubectl patch cm argocd-cmd-params-cm -n argocd --type merge -p '{"data": {"server.insecure": "true"}}'
kubectl rollout restart deployment/argocd-server -n argocd
