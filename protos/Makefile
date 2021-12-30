.PHONY: protos
protos:
	dart pub global activate protoc_plugin
	export PATH="${PATH}:${HOME}/.pub-cache/bin"
	protoc --dart_out=grpc:../packages/smithy_codegen/lib/src/service -I. codegen.proto