all: WMSM.wasm

WMSM.wasm: WMSM.c
	clang --target=wasm32 -O3 -flto -nostdlib -Wl,--no-entry -Wl,--export-all -Wl,--lto-O3 -o WMSM.wasm WFastMSM.c -DWASM_BUILD -DPHONY_STD_TYPES

