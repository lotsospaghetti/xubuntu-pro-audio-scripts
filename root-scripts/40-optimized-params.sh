#!/bin/bash

# following options selectively sourced from ubuntustudio-default-settings package
# https://git.launchpad.net/ubuntustudio-default-settings/
printf '%s/n%s/n%s/n' '#fs.inotify.max_user_watches = 524288' 'vm.swappiness = 10' 'dev.hpet.max-user-freq=3072' > /etc/sysctl.d/50-ubuntustudio.conf
printf '%s/n%s/n' 'KERNEL=="rtc0", GROUP="audio"' 'KERNEL=="hpet", GROUP="audio"' > /lib/udev/rules.d/40-timer-permissions.rules
echo 'GRUB_CMDLINE_LINUX_DEFAULT="$GRUB_CMDLINE_LINUX_DEFAULT preempt=full threadirqs"' > /etc/default/grub.d/ubuntustudio.cfg
update-grub
