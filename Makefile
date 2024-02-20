protoc:
	protoc --go_out=go --go_opt=paths=source_relative \
	--go-grpc_out=go --go-grpc_opt=paths=source_relative protos/*.proto

grpc_dart:
	protoc --dart_out=grpc:dart/generated -Iprotos protos/*.proto