#!/usr/bin/bash
#pw usermod ameagle -G wheel
work_dir=/home/ameagle/sudoers_src
sys_dir=/etc
#for Freebsd
#sys_dir=/usr/local/etc

#rm -rf $work_dir
mkdir -p $work_dir
cd $work_dir
cp -rf $sys_dir/sudoers* ./
wget https://www.sudo.ws/dist/sudo-1.9.5p2.tar.gz
tar xfvz sudo-1.9.5p2.tar.gz
cd sudo-1.9.5p2
./configure --sysconfdir=$sys_dir
echo "./configure --sysconfdir="$sys_dir
make -j6
pkg remove -y sudo
rpm -e --nodeps sudo
make install
ln -s /usr/local/bin/sudo /usr/bin/sudo
sudoedit -s /

