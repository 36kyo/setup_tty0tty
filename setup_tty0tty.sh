#!/bin/bash

DOWNLOADPATH=~/Downloads

echo "> install tnt"
echo "> cd ~/Downloads/tty0tty/module"
cd ~/Downloads/tty0tty/module
echo "> rm ./tty0tty.ko"
rm ./tty0tty.ko
echo "> make"
make
echo "> ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko"
ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko
echo "> sudo rm /lib/modules/$(uname -r)/kernel/drivers/misc/tty0tty.ko"
sudo rm /lib/modules/$(uname -r)/kernel/drivers/misc/tty0tty.ko
echo "> ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko"
ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko
echo "> sudo cp tty0tty.ko /lib/modules/$(uname -r)/kernel/drivers/misc/"
sudo cp tty0tty.ko /lib/modules/$(uname -r)/kernel/drivers/misc/
echo "> ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko"
ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko
echo "> sudo depmod"
sudo depmod
echo "> sudo modprobe tty0tty"
sudo modprobe tty0tty
echo "> sudo chmod 666 /dev/tnt*"
sudo chmod 666 /dev/tnt*
echo "> cat /etc/modules"
cat /etc/modules
echo "> ls -la /dev/tnt*"
ls -la /dev/tnt*
echo "> cd -"
cd -
