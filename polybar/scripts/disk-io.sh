#!/bin/bash

# 设置设备名（你可以改成 nvme0n1、sda 等）
#DEV="nvme0n1"
#DEV="$1"
DEV=${DISK_NAME:-}

# 读取第1次（丢弃）
iostat -d -k 1 1 >/dev/null

# 读取第2次，提取行
line=$(iostat -d -k 1 1 | awk -v dev="$DEV" '$1 == dev {print}')

# 提取读取、写入（单位 KB/s）
read_kb=$(echo $line | awk '{print $3}')
write_kb=$(echo $line | awk '{print $4}')

# 输出格式
printf "IO  %.1fK  %.1fK\n" "$read_kb" "$write_kb"
