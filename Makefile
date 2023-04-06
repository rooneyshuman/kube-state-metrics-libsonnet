ksm-custom/schema.json:
	cd go && go run . > ../ksm-custom/schema.json

.PHONY: docs
docs:
	@cd ksm-custom && \
	rm -rf docs/ && \
	jsonnet -J vendor -S -c -m docs/ \
			--exec "(import 'doc-util/main.libsonnet').render(import 'main.libsonnet')"
