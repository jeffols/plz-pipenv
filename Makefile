.PHONY: build-binary collect-sources build-container build run build-and-run greet-jeff

DOCKER_TAG=sample
DOCKER_VERSION=1.0


build-binary:
	./pleasew build src:sample

collect-sources:
	rm -rf context/app
	unzip plz-out/bin/src/sample.pex -d context/app 
	cp Pipfile* context/app

build-container: collect-sources
	docker build \
	--network host \
	-t ${DOCKER_TAG}:${DOCKER_VERSION} \
	context

build: build-binary build-container

run:
	docker run --rm ${DOCKER_TAG}:${DOCKER_VERSION}

build-and-run: build run

greet-jeff: build
	docker run --rm  -it sample:1.0 --greetee Jeff