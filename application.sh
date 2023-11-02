
argocd app create nkp-pr-manual \
--repo https://github.com/evanshortiss/neon-kube-previews \
--revision main \
--dest-namespace nkp-pr-manual \
--dest-server https://kubernetes.default.svc \
--path helm \
--helm-set database.url=$DATABASE_URL --helm-set image.tag=latest --helm-set namespace=nkp-pr-manual \
--self-heal \
--sync-policy auto \
--auto-prune
