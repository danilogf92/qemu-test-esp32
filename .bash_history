python --version
cd /opt/esp/idf/
. ./export.sh
clear
cd /home/esp
clear
idf.py build
clear
python /opt/esp/idf/components/esptool_py/esptool/esptool.py  --chip esp32 merge_bin  --output result.bin  --fill-flash-size 4MB  0x1000 build/bootloader/bootloader.bin  0x8000 build/partition_table/partition-table.bin  0x10000 build/test-danilo.bin  --flash_mode dio  --flash_freq 40m  --flash_size 4MB
cd /opt
ls
cd esp/
ls
cd idf
ls
. ./export.sh
cd /home/esp
idf.py build
idf.py fullclean
clear
idf.py build
clear
clear
python /opt/esp/idf/components/esptool_py/esptool/esptool.py  --chip esp32 merge_bin  --output result.bin  --fill-flash-size 4MB  0x1000 build/bootloader/bootloader.bin  0x8000 build/partition_table/partition-table.bin  0x10000 build/test-danilo.bin  --flash_mode dio  --flash_freq 40m  --flash_size 4MB
clear
qemu-system-xtensa -nographic     -machine esp32     -drive file=result.bin,if=mtd,format=raw 

idf.py build
clear
cd /opt/esp/idf/
. ./export.sh
clear
cd /home/esp/
idf.py build
clear
python /opt/esp/idf/components/esptool_py/esptool/esptool.py  --chip esp32 merge_bin  --output result.bin  --fill-flash-size 4MB  0x1000 build/bootloader/bootloader.bin  0x8000 build/partition_table/partition-table.bin  0x10000 build/test-danilo.bin  --flash_mode dio  --flash_freq 40m  --flash_size 4MB
clear
qemu-system-xtensa -s -S -nographic     -machine esp32     -drive file=result.bin,if=mtd,format=raw
