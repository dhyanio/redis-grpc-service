build:
	go build -o bin/meeta

run: build
	./bin/meeta

proto:
	protoc --go_out=, --go_out=paths=source_relative \
	--go_grpc_out=, --go_grpc_opt=paths=source_relative \
	proto/service.proto

.PHONY: proto
