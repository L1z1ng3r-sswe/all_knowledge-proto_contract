protoc: 
	mkdir -p gen/go/auth
	
	protoc \
	-I proto/auth \
	--go_out=./gen/go/auth \
	--go_opt=paths=source_relative \
	--go-grpc_out=./gen/go/auth \
	--go-grpc_opt=paths=source_relative \
	proto/auth/auth.proto

clean:
	rm -rf gen/go/auth