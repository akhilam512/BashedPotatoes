#!/bin/bash

lsblk

echo "Enter disk name (eg: sda, sdb)"
echo "(NAME, not sdb1 or sdb2 or sdcTHREE, JUST the NAME : sdb, sdc, thanks)"
read disk


echo "Unmounting"
sudo umount /dev/$disk

echo "Enter Directory of ISO file with the file name, ofcourse" 
read filename

echo "Doing the stuff"
 sudo dd bs=4M if=$filename of=/dev/$disk conv=fdatasync


echo "Worked out"

echo "Surely"


