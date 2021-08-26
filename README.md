## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```bash
helm repo add humiu https://humiu.github.io/charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo humiu` to see the charts.

To install the ingressroute-helmchart-wrapper chart:

1.  Create a `values.yaml` file (you can use [that one](humiu/charts/blob/main/charts/ingressroute-helmchart-wrapper/values.yaml) as a template).

2.  Install the the ingressroute-helmchart-wrapper chart with your `values.yaml` file:

```bash
helm install helm-wrapper humiu/ingressroute-helmchart-wrapper -f ./values.yaml
```

To uninstall the chart:

```bash
helm delete helm-wrapper
```
