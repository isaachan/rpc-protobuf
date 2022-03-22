rm -rf ../src/gen && mkdir -p ../src/gen

protoc -I../proto search.proto --cpp_out=../src/gen
protoc -I../proto search.proto --grpc_out=../src/gen --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` 
