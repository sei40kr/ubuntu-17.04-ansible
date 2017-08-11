AUTHOR = sei40kr
IMAGE_NAME=ubuntu-17.04-ansible

TAG = $(AUTHOR)/$(IMAGE_NAME)

.PHONY: all
all: build

.PHONY: lint
lint:
	@docker run -i --rm lukasmartinelli/hadolint <Dockerfile

.PHONY: build
build:
	@docker build . -t $(TAG)

.PHONY: rebuild
rebuild:
	@docker build . --no-cache -t $(TAG)

