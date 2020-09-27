#!/usr/bin/make -f

IMAGE := novafacing/lapis
.PHONY: alpine

# ------------------------------------------------------------------------------

all: alpine

build:
	docker build -t=$(IMAGE):alpine  .

run:
	moonc $(shell pwd)/app/*.moon
	docker run -v $(shell pwd)/app:/app -p 8080:8080 $(IMAGE):alpine


