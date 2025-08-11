#!/bin/bash

IMG="debug/kernel.img"

if [ ! -f "$IMG" ]; then
  echo "Error: $IMG not found. Build the kernel first."
  exit 1
fi

qemu-system-arm \
  -M raspi1ap \
  -kernel "$IMG" \
  -serial stdio \
