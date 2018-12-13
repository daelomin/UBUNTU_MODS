

## https://linuxhint.com/ramdisk_ubuntu_1804/
sudo mkdir /mnt/ramdisk
sudo mkdir /mnt/ramdisk_backup
sudo mount -t tmpfs -o rw,size=2G tmpfs /mnt/ramdisk


## enable service
# cp ramdisk-sync.service /lib/systemd/system/ramdisk-sync.service
# sudo systemctl enable ramdisk-sync.service
