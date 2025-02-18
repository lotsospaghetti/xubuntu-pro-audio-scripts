#!/bin/bash

flatpaks=(
org.tenacityaudio.Tenacity
org.kde.krita
org.blender.Blender
com.github.PintaProject.Pinta
org.mixxx.Mixxx
)

flatpak install --noninteractive "${flatpaks[@]}"
