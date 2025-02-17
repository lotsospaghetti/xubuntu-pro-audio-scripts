#!/bin/bash

xfconf-query -c xfwm4 -v --create -p /general/theme -t string -s 'Greybird-dark'
xfconf-query -c xfwm4 -v --create -p /general/title_font -t string -s 'Atkinson Hyperlegible 12'
xfconf-query -c xsettings -v --create -p /Net/ThemeName -t string -s 'Greybird-dark'
xfconf-query -c xsettings -v --create -p /Gtk/FontName -t string -s 'Atkinson Hyperlegible 12'
xfconf-query -c xsettings -v --create -p /Gtk/MonospaceFontName -t string -s 'MartianMono Nerd Font 12'
xfconf-query -c xsettings -v --create -p /Net/EnableInputFeedbackSounds -t bool -s false
xfconf-query -c xsettings -v --create -p /Net/EnableEventSounds -t bool -s false
xfconf-query -c xfce4-terminal -v --create -p /font-use-system -t bool -s true
xfconf-query -c xfce4-terminal -v --create -p /misc-show-unsafe-paste-dialog -t bool -s false
xfconf-query -c keyboards -v --create -p /Default/Numlock -t bool -s true
xfconf-query -c xfce4-session -v --create -p /general/SaveOnExit -t bool -s false
xfconf-query -c xfce4-power-manager -v --create -p /xfce4-power-manager/logind-handle-lid-switch -t bool -s true

# wallpaper credit to positron dream [https://www.positrondream.com/]
xfconf-query -c xfce4-desktop -v --create -p /backdrop/single-workspace-mode -t bool -s true
xfconf-query -c xfce4-desktop -v --create -p /backdrop/screen0/monitoreDP-1/workspace0/last-image -t string -s '/usr/share/backgrounds/Sleepless Dream (Final).png'
xfconf-query -c xfce4-desktop -v --create -p /desktop-menu/show -t bool -s true
xfconf-query -c xfce4-desktop -v --create -p /desktop-icons/style -t int -s 0

mkdir -p $HOME/.config/xfce4/terminal
cat << EOF >> $HOME/.config/xfce4/terminal/accels.scm
(gtk_accel_path "<Actions>/terminal-window/fullscreen" "")
(gtk_accel_path "<Actions>/terminal-window/contents" "")
EOF
