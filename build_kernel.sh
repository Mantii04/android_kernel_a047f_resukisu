#!/bin/bash

export KBUILD_BUILD_USER=@lesdieuxx

mkdir -p out
./scripts/kconfig/merge_config.sh -O out/ -m arch/arm64/configs/exynos850-a04sxx_defconfig arch/arm64/configs/lesdieuxx.config
make ARCH=arm64 LLVM=1 O=out olddefconfig
make ARCH=arm64 LLVM=1 O=out -j$(nproc)
