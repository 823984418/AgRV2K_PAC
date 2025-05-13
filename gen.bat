
del %~dp0/src/lib.rs
del %~dp0/build.rs
del %~dp0/device.x

svd2rust --target riscv -i %~dp0/svd/AgRV2K_patch.svd

move %~dp0/lib.rs %~dp0/src/lib.rs

cargo fmt

cargo build
