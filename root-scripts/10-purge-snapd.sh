#!/bin/bash

for s in $(snap list | awk 'NR > 1 {print $1}'); do snap remove --purge $s; done

systemctl disable --now snapd.socket
systemctl disable --now snapd
systemctl mask snapd
apt purge -y snapd
snap_dirs=(/snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd /home/*/snap)
for i in "${snap_dirs[@]}"; do
  umount $i 2> /dev/null
done
rm -rf ${snap_dirs[@]}

cat << EOF > /etc/apt/preferences.d/nosnap.pref
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF
