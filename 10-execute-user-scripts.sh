#!/bin/bash

for i in $(ls ./user-scripts); do
  echo $i
  bash -c "./user-scripts/$i" 2> "./user-scripts/errors.log"
done
