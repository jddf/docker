VERSION := 0.1.0

.PHONY: jddf-tools
jddf-tools: jddf-tools.dockerfile
	docker build -t jddf/jddf-tools:${VERSION} -f jddf-tools.dockerfile .
	docker push jddf/jddf-tools:${VERSION}
