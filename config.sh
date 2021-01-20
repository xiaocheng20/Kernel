#!/bin/bash
export ARCH=arm64
ls arch/arm64/configs 
read -p "choice config to menu:" config
target=$config
make ${target}
make menuconfig
echo "Press any key to save"
read
make savedefconfig
mv defconfig arch/${ARCH}/configs/${target}
