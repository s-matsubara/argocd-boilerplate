![Helm Badge](https://img.shields.io/badge/Helm-0F1689?logo=helm&logoColor=fff&style=for-the-badge)
![Argo Badge](https://img.shields.io/badge/Argo-EF7B4D?logo=argo&logoColor=fff&style=for-the-badge)
![RenovateBot Badge](https://img.shields.io/badge/RenovateBot-1A1F6C?logo=renovatebot&logoColor=fff&style=for-the-badge)
# Concept
Argo CD 学習用にセルフマネージドなArgo CD 環境を爆速でセットアップする

## Setup
```bash
$ make setup
```

## External IP
ServiceはLoadBalancerタイプ設定  
IPは以下コマンドから確認
```bash
$ kubectl get svc/argocd-server -nargocd
```

## Login
ユーザー名とパスワードは固定

| user  | password |
|-------|----------|
| admin | password |

### Create password
`argocd/value.yaml`で指定している暗号化されたパスワード文字列は以下コマンドで作成
```bash
htpasswd -nbBC 10 "" password | tr -d ':\n' | sed 's/$2y/$2a/'
```

### Merge boilerplate
```bash
$ git remote add boilerplate git@github.com:s-matsubara/argocd-boilerplate.git
$ git fetch boilerplate
$ git merge boilerplate/main --allow-unrelated-histories
```
