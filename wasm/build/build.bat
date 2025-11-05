del main.wasm
cargo build --target wasm32-unknown-unknown --release
copy target\wasm32-unknown-unknown\release\build.wasm
rename build.wasm main.wasm 
pause