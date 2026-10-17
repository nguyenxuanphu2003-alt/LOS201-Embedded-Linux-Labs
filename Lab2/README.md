# LAB 2 - Linux Character Device Driver

## 1. Objective

Develop a Linux Character Device Driver and explore
Linux virtual filesystems and NAND Flash simulation.

## 2. Development Environment

- Host OS: Ubuntu Linux
- Target: ARM Cortex-A9
- Linux Kernel: 5.15.0
- Emulator: QEMU
- Language: C

## 3. Features

### Character Device Driver

The driver supports:

- Open
- Read
- Write
- Release

Device:

/dev/lab2

### procfs

The driver provides information through:

/proc/lab2_info

### sysfs

The driver exports attributes through:

/sys/class/lab2_class/lab2/

Attributes:

- buffer_len
- open_count
- last_data

## 4. Project Structure

- driver/: Driver source code and Makefile
- output/: Compiled kernel module and Initramfs
- rootfs/: Embedded Linux startup configuration
- scripts/: Driver and filesystem test scripts
- docs/: NAND Flash and JFFS2 documentation

## 5. Kernel Module

Module:

lab2_driver.ko

Kernel compatibility:

Linux 5.15.0 ARMv7

## 6. Driver Verification

Previously verified operations:

- Loaded the kernel module
- Created /dev/lab2
- Wrote data to the character device
- Read data from the character device
- Read /proc/lab2_info
- Checked sysfs attributes

## 7. NAND Flash and JFFS2

NAND Flash simulation was performed on the Ubuntu host.

The JFFS2 filesystem was created and mounted
successfully during the lab.

See:

docs/JFFS2.md

## 8. Test Scripts

- scripts/test_driver.sh
- scripts/test_procfs.sh

## 9. Author

GitHub: nguyenxuanphu2003-alt
