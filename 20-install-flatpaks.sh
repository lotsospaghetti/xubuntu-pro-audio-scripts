#!/bin/bash

flatpaks=(
org.tenacityaudio.Tenacity
org.kde.krita
org.blender.Blender
com.github.PintaProject.Pinta
)

flatpak install --noninteractive "${flatpaks[@]}"
