# GitLab Playground

Playground for GitLab pipeline.

---

## Requirements

- minikube
- helm

## Usage

Deploy GitLab on top of Minikube:
```bash
./deploy.sh
```

Undeploy the Gitlab setup:
```bash
minikube delete
```

## More information

- https://docs.gitlab.com/charts/quickstart/index.html
- https://docs.gitlab.com/charts/development/minikube
- https://github.com/containers/skopeo
