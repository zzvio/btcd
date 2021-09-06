package main

import (
	"strings"

	"log"

	"github.com/zzvio/btcd/consts"
	"github.com/zzvio/btcd/tools"
)

// call - Runs the contract, It receive data as parsed byte and returns back a parsed byte array
func call(arr []byte) []byte {
	if len(arr) >= 6 && arr[0] == consts.MsgTypeStartPlugin && arr[1] == consts.MsgTypeStartPlugin {
		consts.PluginToken = tools.BytesToInt(arr[2:6])
		log.Println("Starting Btc Node")

		args := strings.Split(string(arr[6:]), " ")
		args = append([]string{""}, args...)
		runMain(args)
		return []byte{}
	}
	return []byte{}
}
