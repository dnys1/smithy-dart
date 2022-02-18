.PHONY: protos
protos:
	@dart pub global activate protoc_plugin
	@export PATH="${PATH}:${HOME}/.pub-cache/bin"
	protoc --dart_out=lib/model -Iprotos protos/dart_services.proto