# Kube Preview Environments with Neon Database

## Prerequisites

A Kubernetes cluster with Argo CD installed and exposed via a public ingress.

## Usage

Click the **Use this template** button in the top-right corner of this
repository. Create a new repository with the following options:

* Repository name: `neon-kube-previews`
* Vsibility: Public

Set the following secrets in the **Secrets and variables > Actions* screen from
your new repository's settings screen:

* `DOCKERHUB_USERNAME` - Your Docker Hub username.
* `DOCKERHUB_TOKEN` - A token generated [Account Settings](https://hub.docker.com/settings/security) on Docker Hub.
* `NEON_PROJECT_ID` - Found in *Settings > General* on the Neon project dashboard.
* `NEON_API_KEY` - Found in the [Developer Settings](https://console.neon.tech/app/settings/api-keys) screen on the Neon console.
* `ARGOCD_HOSTNAME` - Strictly the hostname, e.g `argocd.foo.bar` without `https`.
* `ARGOCD_USERNAME` - A valid Argo CD username. You can could use `admin` if you're prototyping.
* `ARGOCD_PASSWORD` - The password associated with the given `ARGOCD_USERNAME`.
