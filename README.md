# Xubuntu pro audio scripts

Some scripts I made for a laptop I'm trying to make into a linux audio workstation using [Xubuntu Minimal 24.10](https://xubuntu.org/download/). I've needed to do a couple reinstalls already so the idea here is to establish a baseline to go off of the next time I need to redo things. Also some dotfiles are here, I guess.

## Usage

After rebooting into a fresh Xubuntu install do `chmod -R +x path/to/scripts` and run `sudo ./00-execute-root-scripts.sh`, then `./10-execute-user-scripts.sh`. If everything goes well it should reboot again with all the changes applied.

I don't really want snapd, but if you'd like to keep it then remove `root-scripts/10-purge-snapd.sh` before running the postinstall.

If pulling from this repository then git will need to be installed to even get these scripts in the first place:
```
sudo apt update && sudo apt upgrade
sudo apt install -y git
```

## Notes

- I don't think ZFS likes the linux-realtime kernel so using that probably isn't an option...

## TODOs

- [ ] Write a description of everything this is supposed to add/change
- [ ] Install Flatpaks
- [ ] Configure JACK
- [ ] Utilize Ubuntu's [autoinstall.yaml](https://canonical-subiquity.readthedocs-hosted.com/en/latest/intro-to-autoinstall.html) functionality
- [ ] Utilize [Ansible](https://github.com/ansible/ansible)

## Okay but like... why not just use [Ubuntu Studio](https://ubuntustudio.org/)?

Mainly wanting to learn the ins and outs of how pro audio works in Linux, learning more about automating OS installs, and a masochistic desire to DIY everything lol. Also, part of this automation is going to be focused on setting things up for propietary Windows software to not be as much of a pain to use on Linux.

## Credits/resources

- Wallpaper by [positron dream](https://www.positrondream.com)
- [ArchWiki page for pro audio](https://wiki.archlinux.org/title/Professional_audio)
- [ubuntustudio-default-settings package](https://git.launchpad.net/ubuntustudio-default-settings/)
- [Bash scripting cheat sheet](https://devhints.io/bash)