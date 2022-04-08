#!/bin/bash

cd $(dirname $0)

cd ./percy/client
./build-wasm.sh

cd ../../
OUTPUT_CSS="$(pwd)/../percy/client/build/app.css" cargo run -p ssr_wasmedge
