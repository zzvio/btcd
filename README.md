ZZV BTC Plugin
====

[![Build Status](https://github.com/btcsuite/btcd/workflows/Build%20and%20Test/badge.svg)](https://github.com/btcsuite/btcd/actions)
[![Coverage Status](https://coveralls.io/repos/github/btcsuite/btcd/badge.svg?branch=master)](https://coveralls.io/github/btcsuite/btcd?branch=master)
[![ISC License](https://img.shields.io/badge/license-ISC-blue.svg)](http://copyfree.org)
[![GoDoc](https://img.shields.io/badge/godoc-reference-blue.svg)](https://godoc.org/github.com/btcsuite/btcd)

Golang Plugin to run btc node inside the zzv blockchain. This plugin is extension of zzv core functionality.

By installing this plugin, you can run the btc node along with your blockchain node. 

This project is fork of https://github.com/btcsuite/btcd
### Compile and Test this plugin locally
Prerequisites: 
1. Java 11 
2. Golang 1.17

* Linux:
    * Build-go ``make go-build``
    * Build-java ``make java-build``
    * Run ``make run``
* Mac:
  * Set Env: `export CGO_CFLAGS="-I$PWD"`
  * Compile Go: `go build -o libgobtc.dylib -buildmode=c-shared`
  * Compile Java: ``make java-build``
  * Run: `make run`
* Windows:
  * Download and setup gcc: https://jmeubank.github.io/tdm-gcc/
  * Set Env: `$Env:CGO_CFLAGS = "-I$PWD"`
  * Compile Go: `go build -o gobtc.dll -buildmode=c-shared`
  * Compile Java: `cd gojni/src/main/java; javac io/zzv/jni/Main.java`
  * Run: `cd gojni/src/main/java; java io.zzv.jni.Main`

## License

btcd is licensed under the [copyfree](http://copyfree.org) ISC License.
