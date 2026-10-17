# LAB 2 - NAND Flash and JFFS2

## 1. Objective

Simulate NAND Flash on Linux and create a JFFS2 filesystem.

## 2. Environment

- Ubuntu Linux (Host)
- MTD Utilities
- NAND Simulator (nandsim)
- JFFS2 Filesystem

## 3. NAND Flash Simulation

Load the NAND simulator:

```bash
sudo modprobe nandsim first_id_byte=0x20 second_id_byte=0x35
```

Check MTD devices:

```bash
cat /proc/mtd
```

## 4. Create JFFS2 Image

Prepare sample data:

```bash
mkdir -p /tmp/jffs2_data
echo "Hello from JFFS2!" > /tmp/jffs2_data/hello.txt
```

Create a JFFS2 image:

```bash
mkfs.jffs2 -r /tmp/jffs2_data -o /tmp/rootfs.jffs2 -e 0x4000
```

The erase-block size must match the simulated MTD partition.

## 5. Flash and Mount

Before flashing, identify the correct MTD partition.

In the previously tested environment, the simulated partition was /dev/mtd1.

Warning: Flash erase operations destroy data on the selected MTD partition. Never use these commands on an unverified device.

## 6. Verification

The following operations were previously completed successfully:

- Created a JFFS2 image.
- Mounted JFFS2 on simulated NAND Flash.
- Read hello.txt.
- Created persistence.txt.
- Verified the written data.
- Unmounted the filesystem.

## 7. Previous Test Results

hello.txt:

```text
Hello from JFFS2!
```

persistence.txt:

```text
Persistence test OK
```

## 8. Notes

The NAND Flash simulation was performed on the Ubuntu host.

The Linux character device driver was developed for Linux Kernel 5.15 ARMv7.
