go-build:
	CGO_CFLAGS="-I${PWD}" go build -o libgobtc.so -buildmode=c-shared; \
	mkdir -p ~/.java/packages/lib/; \
	cp libgobtc.so ~/.java/packages/lib/libgobtc.so
java-build:
	cd gojni/src/main/java; \
	javac io/zzv/jni/Main.java
run:
	cd gojni/src/main/java; \
	java io.zzv.jni.Main