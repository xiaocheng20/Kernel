#!/bin/bash
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=~/Desktop/Toolchain/google_gcc/aarch64-linux-android-4.9/bin/aarch64-linux-android- \
CC=~/Desktop/Toolchain/google_clang/clang/bin/clang \
CROSS_COMPILE_ARM32=arm-linux-gnueabi- "
ls arch/arm64/configs
read -p "choice your config : " defconfig
make ${args} $defconfig
make ${args}
