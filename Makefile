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
	
deploy-deployment:
	docker build -t app .
	kind load docker-image app:latest
	if kubectl get deployment b2i-deployment; then \
	  kubectl delete deployment b2i-deployment; \
	fi
	kubectl apply -f k8s/deployment.yaml

deploy-service:
	docker build -t app .
	kind load docker-image app:latest
	if kubectl get service b2i-service; then \
	  kubectl delete service b2i-service; \
	fi
	if kubectl get deployment b2i-deployment; then \
	  kubectl delete deployment b2i-deployment; \
	fi
	kubectl apply -f k8s/deployment.yaml
	kubectl apply -f k8s/service.yaml

run:
	kubectl port-forward pod/b2i-pod 8080:5000
