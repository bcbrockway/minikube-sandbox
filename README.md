#### prometheus

```bash
kubectl config use-context minikube
helm init
helm install stable/prometheus-operator --name prometheus-operator --namespace monitoring
```

#### haproxy
```bash
kubectl label node minikube role=ingress-controller
kubectl apply -f haproxy/
```
