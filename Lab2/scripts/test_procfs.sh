#!/bin/sh

echo "======================================"
echo " LAB-02 procfs / sysfs Test"
echo "======================================"

echo
echo "[1] /proc/lab2_info"
cat /proc/lab2_info

echo
echo "[2] sysfs directory"
ls -l /sys/class/lab2_class/lab2/

echo
echo "[3] buffer_len"
cat /sys/class/lab2_class/lab2/buffer_len

echo
echo "[4] open_count"
cat /sys/class/lab2_class/lab2/open_count

echo
echo "[5] last_data"
cat /sys/class/lab2_class/lab2/last_data

echo
echo "======================================"
echo " PROCFS / SYSFS TEST FINISHED"
echo "======================================"
