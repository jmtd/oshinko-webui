.PHONY : image run_dogen

image: out/Dockerfile
	cd out && docker build -t oshinko-webui .

out/Dockerfile: image.yaml out run_dogen
run_dogen:
	docker run -it --rm -v $(shell pwd):/tmp/blah:z dogen:latest \
		--verbose \
		/tmp/blah/image.yaml /tmp/blah/out

out:
	mkdir -p out
