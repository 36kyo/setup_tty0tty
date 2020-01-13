#!/bin/bash

FILEPATH=~/Downloads
NAME=tty0tty
DIRNAME=tty0tty
FILENAME=tty0tty_1.2.tar.xz
MAKEPATH=$FILEPATH/$DIRNAME/module
KONAME=tty0tty.ko
INSTPATH=/dev/tnt*

echo "install tnt"
set -x # print command option

cd $FILEPATH
pwd
rm -r $DIRNAME
tar xf $FILENAME
cd $MAKEPATH
make
# ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep tty0tty.ko
# sudo rm /lib/modules/$(uname -r)/kernel/drivers/misc/tty0tty.ko
ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep $KONAME
sudo cp $KONAME /lib/modules/$(uname -r)/kernel/drivers/misc/
ls /lib/modules/$(uname -r)/kernel/drivers/misc/ | grep $KONAME
sudo depmod
sudo modprobe $NAME
sudo chmod 666 $INSTPATH
# cat /etc/modules
ls -la $INSTPATH
# cd -
