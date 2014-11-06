#!/bin/bash
rm -r vendor
rm Berksfile.lock
berks vendor vendor/cookbooks
/usr/bin/time -v packer build --only=qemu freeipa-fedora-20-x86_64.json
#/usr/bin/time -v packer build --only=virtualbox-iso freeipa-fedora-20-x86_64.json
#/usr/bin/time -v packer build -debug --only=virtualbox-iso freeipa-fedora-20-x86_64.json
# beeper
#aplay /usr/share/sounds/alsa/Front_Center.wav
#ogg123 /usr/share/sounds/KDE-Im-Irc-Event.ogg
