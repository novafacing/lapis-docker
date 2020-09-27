#!/usr/bin/make -f

IMAGE := novafacing/lapis
.PHONY: alpine

# ------------------------------------------------------------------------------

all: alpine

alpine:
	docker build -t=$(IMAGE):alpine -f alpine/Dockerfile .

run:
	docker run -v $(pwd)/src:/app -p 8080:8080 novafacing/lapis:alpine


