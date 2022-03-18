.PHONY: build
build: library.json
	dart pub global activate -spath ../packages/smithy_codegen
	dart pub global run smithy_codegen -f library.json -o generated

library.json:
	docker run --rm -v ${PWD}:/models smithy ast /models/library.smithy > library.json 
