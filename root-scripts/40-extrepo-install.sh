#!/bin/bash

extrepo enable librewolf
extrepo enable winehq
dpkg --add-architecture i386
apt update && apt install -y librewolf winehq-staging
