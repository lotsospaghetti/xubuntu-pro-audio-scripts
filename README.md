# Xubuntu pro audio scripts

Some scripts I made for a laptop I'm trying to make into a linux audio workstation using [Xubuntu Minimal 24.10](https://xubuntu.org/download/). I've needed to do a couple reinstalls already so the idea here is to establish a baseline to go off of the next time I need to redo things. Also some dotfiles are here, I guess.

## Usage

After rebooting into a fresh Xubuntu install do `chmod -R +x path/to/scripts` and run `sudo ./00-execute-root-scripts.sh`, then `./10-execute-user-scripts.sh`. If everything goes well it should reboot again with all the changes applied.

If pulling from this repository then git will need to be installed to even get these scripts in the first place:
```
sudo apt update && sudo apt upgrade
sudo apt install -y git
```

### Keep snapd

I don't personally want snapd, but if you'd like to keep it then remove `root-scripts/10-purge-snapd.sh` before running the postinstall.

### ubuntustudio-pwjack-config

This will install the `ubuntustudio-pipewire-config` package, which provides a ~~binary that can set the buffer size and sample rate of Pipewire, I *think* via [PAM limits](https://wiki.archlinux.org/title/Realtime_process_management#Configuring_PAM).~~ shell script that writes an environment variable `$PIPEWIRE_QUANTUM` to `/etc/profile.d`. The `root-scripts/40-optimized-params.sh` script will enable this setting and set it to 16 and 48000, respectively, but you may need to adjust this after the autoinstall. Just type `ubuntustudio-pwjack-config` in a terminal to get the list of possible values and input the values you want.

### Optional packages

Some of the apt commands in `root-scripts/30-package-install` won't automatically proceed, and these can be declined if those packages aren't desired. 

### Flatpaks

After the last restart you can run `./20-install-flatpaks.sh` to install the applications listed in there. This includes non-audio programs like [Krita](https://flathub.org/apps/org.kde.krita) and [Blender](https://flathub.org/apps/org.blender.Blender).

## TODOs

- [ ] Write a description of everything this is supposed to add/change
- [x] Install Flatpaks
- [x] Configure ~~JACK~~ Pipewire
- [ ] Utilize Ubuntu's [autoinstall.yaml](https://canonical-subiquity.readthedocs-hosted.com/en/latest/intro-to-autoinstall.html) functionality
- [ ] Utilize [Ansible](https://github.com/ansible/ansible)
- [ ] Automate the installation of an entire Windows VM...?
- [ ] Look into getting ZFS properly configured?

## Okay but like... why not just use [Ubuntu Studio](https://ubuntustudio.org/)?

Mainly wanting to learn the ins and outs of how pro audio works in Linux, learning more about automating OS installs, and a masochistic desire to DIY everything lol. Also, part of this automation is going to be focused on setting things up for propietary Windows software to not be as much of a pain to use on Linux.

## Credits/resources

- Wallpaper by [positron dream](https://www.positrondream.com)
- [ArchWiki page for pro audio](https://wiki.archlinux.org/title/Professional_audio)
- [ubuntustudio-default-settings package](https://git.launchpad.net/ubuntustudio-default-settings/)
- [Bash scripting cheat sheet](https://devhints.io/bash)
- [ubuntustudio-pwjack-config source code](https://git.launchpad.net/ubuntu/+source/ubuntustudio-default-settings/tree/usr/sbin/ubuntustudio-pwjack-config)
