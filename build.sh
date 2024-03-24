#!/bin/bash

PROJECT_NAME="frogSay"

mkdir -p builds

# Linux ARM (ARMv7)
env GOOS=linux GOARCH=arm GOARM=7 go build -o builds/${PROJECT_NAME}-linux-armv7

# Linux x64
env GOOS=linux GOARCH=amd64 go build -o builds/${PROJECT_NAME}-linux-amd64

# Windows x64
env GOOS=windows GOARCH=amd64 go build -o builds/${PROJECT_NAME}-windows-amd64.exe

# macOS x64
env GOOS=darwin GOARCH=amd64 go build -o builds/${PROJECT_NAME}-macos-amd64

# macOS ARM64 (para M1/M2)
env GOOS=darwin GOARCH=arm64 go build -o builds/${PROJECT_NAME}-macos-arm64

echo "Builds Complete!"
