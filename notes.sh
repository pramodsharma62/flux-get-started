helm repo add fluxcd https://charts.fluxcd.io

helm upgrade -i flux fluxcd/flux \
   --set git.url=git@github.com:pramodsharma62/flux-get-started \
   --namespace flux

 helm upgrade -i helm-operator fluxcd/helm-operator \
   --set git.ssh.secretName=flux-git-deploy \
   --set helm.versions=v3 \
   --namespace flux

   fluxctl identity --k8s-fwd-ns flux