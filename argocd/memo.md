```bash
htpasswd -nbBC 10 "" password | tr -d ':\n' | sed 's/$2y/$2a/'
```

```bash
kubectl get svc/argocd-server -nargocd
```

| user     | admin    |
|----------|----------|
| password | password |
