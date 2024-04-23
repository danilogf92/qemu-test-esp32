# Hello World DOCKER Example

| Testing Target | ESP32 |
| ----------------- | ----- |

## Step 1

```text
# build
idf.py build
```

## Step 2

```text
# create a merged bin file
python /opt/esp/idf/components/esptool_py/esptool/esptool.py \
 --chip esp32 merge_bin \
 --output result.bin \
 --fill-flash-size 4MB \
 0x1000 build/bootloader/bootloader.bin \
 0x8000 build/partition_table/partition-table.bin \
 0x10000 build/test-danilo.bin \
 --flash_mode dio \
 --flash_freq 40m \
 --flash_size 4MB
```

## Step 3

```text
#emulate the build
qemu-system-xtensa -nographic \
    -machine esp32 \
    -drive file=result.bin,if=mtd,format=raw 
```

## Step 4

```text
#debug
qemu-system-xtensa -s -S -nographic \
    -machine esp32 \
    -drive file=result.bin,if=mtd,format=raw
```
