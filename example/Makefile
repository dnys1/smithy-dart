.PHONY: build
build: library.json
	dart pub global activate -spath ../packages/smithy_codegen
	dart pub global run smithy_codegen -f library.json --server -o generated

library.json: library.smithy
	docker run --rm -v ${PWD}:/models smithy ast -d /smithy/lib/traits /models/library.smithy > library.json 
