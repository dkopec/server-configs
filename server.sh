!#/bin/bash
# https://microk8s.io/#install-microk8s
sudo snap install microk8s --classic
sudo microk8s status --wait-ready
sudo microk8s enable dashboard dns registry istio
sudo echo alias mkctl="microk8s kubectl" > ~/.profile
sudo microk8s kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443
sudo microk8s dashboard-proxy
