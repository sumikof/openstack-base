NAME=sumikof/openstack-base
VERSION=arm

build:
	docker build -t $(NAME) .
	docker build -t $(NAME):$(VERSION) .

push:
	docker push $(NAME)
