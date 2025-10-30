.PHONY: deploy

deploy:
	docker build -t app .
	docker run -p 8080:5000 app 
