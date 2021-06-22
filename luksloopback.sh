#!/bin/bash
#https://gist.github.com/dbehnke/ad19ca8f1ccf80aebca5
loopdevice=/dev/loop2
loopfile=crypt.loop

#megabytes
loopsize=100

#/dev/mapper/xxxxx when open
cryptmapper=myCrypt

makefilesystem=ext4

#mountpoint of uncrypted device
mountpoint=$HOME/crypt


#creates a new file
create() {
  echo creating a file with size ${loopsize}M with random bits.. this could take a while..
  dd if=/dev/urandom of=$loopfile bs=1M count=$loopsize
  losetup $loopdevice $loopfile
  cryptsetup luksFormat -y $loopdevice
  cryptsetup open $loopdevice $cryptmapper
  sudo mkfs.$makefilesystem /dev/mapper/$cryptmapper
  cryptsetup close $cryptmapper
  losetup -d $loopdevice
  losetup -a
  mkdir -p $mountpoint
}

#mounts crypted loopback file
open() {
  losetup $loopdevice $loopfile
  cryptsetup open $loopdevice $cryptmapper
  mount /dev/mapper/$cryptmapper $mountpoint
}

#unmounts previously mounted loopback file
close() {
  umount $mountpoint
  cryptsetup close $cryptmapper
  losetup -d $loopdevice
}

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi


echo loopdevice  $loopdevice
echo loopfile    $loopfile
echo loopsize    $loopsize
echo cryptmapper $cryptmapper
echo filesystem  $makefilesystem
echo mountpoint  $mountpoint
echo command     $1

$1
