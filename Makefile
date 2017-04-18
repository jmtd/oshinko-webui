.PHONY : image run_dogen

image: build/Dockerfile
	cd build && docker build -t oshinko-webui .

build/Dockerfile: image.yaml build run_dogen
run_dogen:
	docker run -i --rm -v $(shell pwd):/tmp/blah:z jboss/dogen:latest \
		--verbose \
		--repo-files-dir /tmp/blah/repos \
		/tmp/blah/image.yaml /tmp/blah/build

build:
	mkdir -p build
