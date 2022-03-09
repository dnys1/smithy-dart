OUT_DIR=../packages/smithy_codegen/lib/src/service

.PHONY: protos
protos:
	@dart pub global activate protoc_plugin
	@export PATH="${PATH}:${HOME}/.pub-cache/bin"
	protoc --dart_out=grpc:${OUT_DIR} -I. codegen.proto
	dart format ${OUT_DIR}
