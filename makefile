CURRENT_DIRECTORY := $(shell pwd)

run:
	@docker run --rm -i -t curtismitchell/nodejs-docker /bin/bash

build:
	@docker build -t curtismitchell/nodejs:v4.2.1 -t curtismitchell/nodejs:latest .
# build needs a version number parameter
