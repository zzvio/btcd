package main

import (
	"strings"

	"github.com/zzvio/btcd/consts"
	"github.com/zzvio/btcd/tools"
)

// call - Runs the contract, It receive data as parsed byte and returns back a parsed byte array
func call(arr []byte) []byte {
	if len(arr) >= 6 {
		if arr[0] == consts.MsgTypeStartPlugin {
			consts.PluginToken = tools.BytesToInt(arr[2:6])
			args := strings.Split(string(arr[6:]), " ")
			args = append([]string{""}, args...)

			go func() {
				runMain(args)
			}()
			return []byte{}
		} else if arr[0] == consts.MsgTypeStopPlugin {
			StopMain()
		}
	}
	return []byte{}
}
