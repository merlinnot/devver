NS = merlinnot
REPO = dev
VERSION ?= latest

.PHONY: dockerfile build push

dockerfile: Dockerfile.m4 modules/*
	m4 -I modules Dockerfile.m4 > Dockerfile

build: dockerfile
	docker build -t $(NS)/$(REPO):$(VERSION) .

push:
	docker push $(NS)/$(REPO):$(VERSION)

default: build
