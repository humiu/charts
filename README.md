## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```bash
helm repo add humiu https://humiu.github.io/charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo humiu` to see the charts.

To install the traefik-helmchart-wrapper chart:

1.  Create a `values.yaml` file (you can use [that one](charts/traefik-helmchart-wrapper/values.yaml) as a template).

2.  Install the the traefik-helmchart-wrapper chart with your `values.yaml` file:

```bash
helm install helm-wrapper humiu/traefik-helmchart-wrapper -f ./values.yaml
```

To uninstall the chart:

```bash
helm uninstall helm-wrapper
```
