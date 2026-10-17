#!/bin/sh

echo "======================================"
echo " LAB-02 Character Driver Test"
echo "======================================"

echo
echo "[1] Check loaded module"
lsmod | grep lab2

echo
echo "[2] Check device"
ls -l /dev/lab2

echo
echo "[3] Write to /dev/lab2"
echo "Hello from LAB-02!" > /dev/lab2

echo
echo "[4] Read from /dev/lab2"
cat /dev/lab2

echo
echo "[5] Write second message"
echo "Embedded Linux Driver Test" > /dev/lab2

echo
echo "[6] Read second message"
cat /dev/lab2

echo
echo "[7] Kernel log"
dmesg | grep lab2

echo
echo "======================================"
echo " DRIVER TEST FINISHED"
echo "======================================"
