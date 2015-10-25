CURRENT_DIRECTORY := $(shell pwd)

run:
	@docker run --rm -i -t curtismitchell/nodejs /bin/bash
