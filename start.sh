clear

kubectl apply -f ./db-configmap.yaml
kubectl apply -f ./portal-configmap.yaml
kubectl apply -f ./sistema-configmap.yaml

kubectl apply -f ./db-noticias-deployment.yaml
kubectl annotate deployment db-noticias-deployment kubernetes.io/change-cause="Criando banco de dados de noticias na versao 1"

#kubectl apply -f ./sistema-noticias-deployment.yaml
#kubectl annotate deployment sistema-noticias-deployment kubernetes.io/change-cause="Criando sistema de noticias na versao 1"

kubectl apply -f ./portal-noticias-deployment.yaml
kubectl annotate deployment portal-noticias-deployment kubernetes.io/change-cause="Criando portal de noticias na versao 1"

kubectl apply -f ./svc-portal-noticias.yaml
kubectl apply -f ./svc-sistema-noticias.yaml
kubectl apply -f ./svc-db-noticias.yaml

kubectl apply -f imagens-pvc.yaml
kubectl apply -f sessao-pvc.yaml
kubectl apply -f sistema-noticias-statefulset.yaml

kubectl apply -f portal-noticias-hpa.yaml

#kubectl apply -f ./pod-volume.yaml

echo Done