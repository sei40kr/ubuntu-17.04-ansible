tag = 'ubuntu-17.04-ansible'

.PHONY: all
all: build

.PHONY: build
build:
	@docker build . -t $(tag)

.PHONY: rebuild
rebuild:
	@docker build . --no-cache -t $(tag)

