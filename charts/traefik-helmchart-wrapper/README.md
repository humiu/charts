## Helm chart wrapper around the [Helm Controller](https://github.com/k3s-io/helm-controller) [HelmChart CRD](https://rancher.com/docs/k3s/latest/en/helm/#using-the-helm-crd) and the [Traefik](https://traefik.io/) [CRD resources](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/)

If you use [Traefik](https://traefik.io/) as a router in your kubernetes cluster you can use this helm chart to expose any other helm chart application(s) out there with Traefiks [CRD resources](https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/).

### Prerequisites

To be able to use this helm chart the following applications must be setup and running in the cluster:

- [Helm Controller](https://github.com/k3s-io/helm-controller)
- [Traefik](https://github.com/traefik/traefik-helm-chart)

These dependencies are already pre-installed in [k3s](https://k3s.io/) clusters.

### Configuration

Have a look into the [`values.yaml` file](values.yaml) to see all the configuration options.

### Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```bash
helm repo add humiu https://humiu.github.io/charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo humiu` to see the charts.

To install the traefik-helmchart-wrapper chart:

1.  Create a `values.yaml` file (you can use [that one](values.yaml) as a template).

2.  Install the the traefik-helmchart-wrapper chart with your `values.yaml` file:

```bash
helm install helm-wrapper humiu/traefik-helmchart-wrapper -f ./values.yaml
```

To uninstall the chart:

```bash
helm uninstall helm-wrapper
```
