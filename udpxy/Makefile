NS = local
NAME = udpxy
VERSION ?= latest

build-udpxy:
	docker build -t ${NS}/${NAME}-build:${VERSION} -f Dockerfile.build .

udpxy: build-udpxy
	id=$(shell docker create local/udpxy-build) && \
	docker cp $$id:/usr/local/bin/udpxy . && \
	docker rm -v $$id

build: udpxy
	docker build -t ${NS}/${NAME}:${VERSION} .
