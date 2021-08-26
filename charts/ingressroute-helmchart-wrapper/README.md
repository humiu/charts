# Helm chart wrapper around the [Traefik](https://traefik.io/) [IngressRoutes](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-ingressroute) and the [Helm Controller](https://rancher.com/docs/k3s/latest/en/helm/) [HelmChart](https://rancher.com/docs/k3s/latest/en/helm/#using-the-helm-crd) CRDs

## Prerequisites

In order to make use of this helm chart the following applications must be setup and running in the cluster:

- [Traefik](https://github.com/traefik/traefik-helm-chart)
- [Helm Controller](https://github.com/k3s-io/helm-controller)

