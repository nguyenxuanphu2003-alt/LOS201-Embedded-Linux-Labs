# LAB 1 - Embedded Linux System

## 1. Objective

Build a minimal Embedded Linux system using Linux Kernel,
BusyBox, U-Boot, and QEMU.

## 2. Development Environment

- Host OS: Ubuntu Linux
- Target Architecture: ARM Cortex-A9
- Emulated Board: vexpress-a9
- Linux Kernel: 5.15.0
- BusyBox: 1.35.0
- U-Boot: 2022.04
- Emulator: QEMU

## 3. Project Structure

- configs/: Kernel and BusyBox configurations
- output/: Kernel image, U-Boot, Device Tree and Initramfs
- rootfs/: Root filesystem initialization files

## 4. Main Components

### Linux Kernel

The Linux Kernel was configured and compiled for ARM Cortex-A9.

Output:
- zImage
- vexpress-v2p-ca9.dtb

### BusyBox

BusyBox provides essential Linux utilities.

### U-Boot

U-Boot is used as the bootloader.

### Initramfs

The Initramfs provides a minimal root filesystem.

## 5. Verification

The Embedded Linux system was previously booted
successfully using QEMU.

The following components were verified:

- ARM Cortex-A9 emulation
- Linux Kernel boot
- Root filesystem initialization
- BusyBox shell
- Basic Linux commands

## 6. Output Files

- output/zImage
- output/u-boot
- output/vexpress-v2p-ca9.dtb
- output/initramfs.cpio.gz

## 7. Author

GitHub: nguyenxuanphu2003-alt
