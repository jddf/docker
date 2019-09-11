VERSION := 0.1.0

.PHONY: jddf-tools
jddf-tools: jddf-tools.dockerfile
	docker build \
		-t docker.pkg.github.com/jddf/docker/jddf-tools:${VERSION} \
		-f jddf-tools.dockerfile \
		.
	docker push docker.pkg.github.com/jddf/docker/jddf-tools:${VERSION}
