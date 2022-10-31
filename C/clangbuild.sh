#!/bin/bash

set -e

echo "============================================="
echo "Compiling wasm bindings"
echo "============================================="
(
   echo "Compiling"
   #clang --target=wasm32 -O3  -flto -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,--lto-O3 -funsafe-math-optimizations -ffast-math -freciprocal-math -fno-signed-zeros -Ofast -flto=full -v --target=wasm32 -flto -nostdlib -Wl,--no-entry -Wl,--export-all -fwasm-exceptions -o WMSM.wasm WFastMSM.c -DWASM_BUILD
   clang --target=wasm32 -O3 -flto=full -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,--lto-O3 -o WMSM.wasm WFastMSM.c -DWASM_BUILD
)
echo "============================================="
echo "Compiling wasm bindings done"
echo "============================================="
