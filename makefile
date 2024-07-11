cmd=helm

setup:
	$(MAKE) repo-add
	$(MAKE) install-argocd
	$(MAKE) install-argocd-apps

repo-add:
	helm repo add argo https://argoproj.github.io/argo-helm

install-argocd:
	helm install -n argocd argocd argo/argo-cd --values argocd/values.yaml --create-namespace

install-argocd-apps:
	helm install -n argocd argocd-apps argo/argocd-apps --values argocd-apps/values.yaml
