.PHONY: deploy

# deploy:
# 	docker build -t app .
# 	docker run -p 8080:5000 app 

deploy-pod:
	docker build -t app .
	kind load docker-image app:latest
	if kubectl get pod b2i-pod; then \
	  kubectl delete pod b2i-pod; \
	fi
	kubectl apply -f k8s/pod.yaml 

deploy-replicaset:
	docker build -t app .
	kind load docker-image app:latest
	if kubectl get rs b2i-replicaset; then \
	  kubectl delete rs b2i-replicaset; \
	fi
	kubectl apply -f k8s/replicaset.yaml

run:
	kubectl port-forward pod/b2i-pod 8080:5000
