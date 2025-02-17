#!/bin/bash

groupadd realtime
groupadd kvm

home_users=(`echo $(cat /etc/passwd | grep "/home" | cut -d: -f1)`)
if [[ "${#home_users[@]}" -eq 1 ]]; then
  target_user="${home_users[0]}"
fi
trap "echo; exit" SIGHUP SIGINT
while [[ -z "$target_user" ]]; do
  echo -n "Select user to add groups to (${home_users[@]}): "
  read -r ans
  if [[ -n "$(echo ${home_users[@]} | grep $ans)" ]]; then
    target_user="$ans"
  fi
done
trap - SIGHUP SIGINT

gpasswd -a "$target_user" realtime
gpasswd -a "$target_user" kvm
gpasswd -a "$target_user" audio
gpasswd -a "$target_user" video
