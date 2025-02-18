#!/bin/bash

cd $(dirname $0)
if [[ $(whoami) != 'root' ]]; then
  echo "This script requires root privileges"
  exit 1
fi

for i in $(ls ./root-scripts); do
  echo $i
  bash -c "./root-scripts/$i" 2> "./root-scripts/errors.log"
done
