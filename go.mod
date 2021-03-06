module github.com/btcsuite/btcd

require (
	github.com/ClarkGuan/jni v0.0.0-20200615140459-56a06808b778
	github.com/btcsuite/btclog v0.0.0-20170628155309-84c8d2346e9f
	github.com/btcsuite/btcutil v1.0.2
	github.com/btcsuite/go-socks v0.0.0-20170105172521-4720035b7bfd
	github.com/btcsuite/goleveldb v1.0.0
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/btcsuite/winsvc v1.0.0
	github.com/davecgh/go-spew v1.1.1
	github.com/decred/dcrd/lru v1.0.0
	github.com/jessevdk/go-flags v1.4.0
	github.com/jrick/logrotate v1.0.0
	github.com/zzvio/btcd/consts v0.0.0
	github.com/zzvio/btcd/msgs v0.0.0
	github.com/zzvio/btcd/tools v0.0.0
	golang.org/x/crypto v0.0.0-20200510223506-06a226fb4e37
	golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f
)

replace (
	github.com/zzvio/btcd/consts v0.0.0 => ./consts
	github.com/zzvio/btcd/msgs v0.0.0 => ./msgs
	github.com/zzvio/btcd/tools v0.0.0 => ./tools
)

go 1.14
