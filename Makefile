IMAGE = doubleswirve/scrapes-on-scrapes:0.0.1
SHELL = /bin/bash

.PHONY: build run

build :
	docker build --no-cache -t $(IMAGE) -f Dockerfile .

run :
	docker run $(IMAGE)
