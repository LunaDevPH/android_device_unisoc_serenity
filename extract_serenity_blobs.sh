#!/bin/bash

# Define Paths
RAW_DIR="/mnt/c/Users/Titus.DESKTOP-SKLGOOF/Desktop/raw"
TREE_DIR="$HOME/twrp/device/unisoc/serenity"

# Ensure Tree Directory exists
mkdir -p "$TREE_DIR"

echo "--- Starting Blob Extraction for Serenity ---"

# 1. Extract Kernel from boot.img
if [ -f "$RAW_DIR/boot.img" ]; then
    echo "[*] Unpacking boot.img..."
    cp "$RAW_DIR/boot.img" .
    magiskboot unpack boot.img
    mv kernel "$TREE_DIR/kernel"
    # Cleanup local temp files
    rm -f ramdisk dtb kernel_dtb extra boot.img
    echo "[+] Kernel moved to $TREE_DIR"
else
    echo "[!] Error: boot.img not found in $RAW_DIR"
fi

# 2. Extract DTB from vendor_boot.img
if [ -f "$RAW_DIR/vendor_boot.img" ]; then
    echo "[*] Unpacking vendor_boot.img..."
    cp "$RAW_DIR/vendor_boot.img" .
    magiskboot unpack vendor_boot.img
    mv dtb "$TREE_DIR/dtb"
    # Cleanup local temp files
    rm -f ramdisk kernel kernel_dtb extra vendor_boot.img
    echo "[+] DTB moved to $TREE_DIR"
else
    echo "[!] Error: vendor_boot.img not found in $RAW_DIR"
fi

# 3. Copy DTBO.img
if [ -f "$RAW_DIR/dtbo.img" ]; then
    echo "[*] Copying dtbo.img..."
    cp "$RAW_DIR/dtbo.img" "$TREE_DIR/dtbo.img"
    echo "[+] DTBO moved to $TREE_DIR"
else
    echo "[!] Warning: dtbo.img not found in $RAW_DIR"
fi

echo "--- Extraction Complete ---"
ls -l "$TREE_DIR"
