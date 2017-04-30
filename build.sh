#!/bin/bash

GOOS=linux GOARCH=amd64 go build -ldflags "-w -s" resin-xbuild.go
