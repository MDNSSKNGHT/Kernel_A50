#!/bin/bash

export ARCH=arm64


export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export ARCH=arm64

# https://github.com/kdrag0n/proton-clang
export PATH="$HOME/toolchains/proton-clang/bin:$PATH"

make CC=clang CROSS_COMPILE=aarch64-linux-gnu- \
    AR=llvm-ar \
    NM=llvm-nm \
    OBJCOPY=llvm-objcopy \
    OBJDUMP=llvm-objdump \
    STRIP=llvm-strip \
    a50_00_defconfig

make CC=clang CROSS_COMPILE=aarch64-linux-gnu- \
    AR=llvm-ar \
    NM=llvm-nm \
    OBJCOPY=llvm-objcopy \
    OBJDUMP=llvm-objdump \
    STRIP=llvm-strip \
    -j$(nproc --all)
