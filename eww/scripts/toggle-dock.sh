#!/bin/bash

EWW="/home/nood/Applications/eww/target/release/eww"

if $EWW active-windows | grep -q dock; then
  $EWW close dock
else
  $EWW open dock
fi
