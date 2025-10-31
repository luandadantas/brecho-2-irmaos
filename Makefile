.PHONY: deploy

# deploy:
# 	docker build -t app .
# 	docker run -p 8080:5000 app 

deploy:
	docker build -t app .
	kind load docker-image app:latest
	kubectl apply -f k8s/pod.yaml 

run:
	kubectl port-forward pod/b2i-pod 8080:5000
