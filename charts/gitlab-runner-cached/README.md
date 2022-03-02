## GitLab Runner Cached

### Usage

Create a file (e.g. `gitlab-runner-cached.yaml`) with the following content (adjust `runnerRegistrationToken` and `runners.tags`):

```yaml
apiVersion: helm.cattle.io/v1
kind: HelmChart
metadata:
  name: gitlab-runner-cached
  namespace: kube-system
spec:
  repo: https://humiu.github.io/charts
  chart: gitlab-runner-cached
  version: 0.1.8
  targetNamespace: kube-system
  valuesContent: |

    gitlabRunnerValues:
      # GitLab Project -> Settings -> CI/CD -> Runners -> Specific runners -> "And this registration token:"
      runnerRegistrationToken: "YOUR_REGISTRATION_TOKEN"
      runners:
        tags: "your-cluster-name, your-domain.com, privileged, kubernetes, k8s, k3s"
```

Apply this file. E.g.:

```bash
kubectl apply -f gitlab-runner-cached.yaml
```
