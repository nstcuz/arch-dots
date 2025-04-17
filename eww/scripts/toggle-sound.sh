#!/bin/bash

EWW="/home/nood/Applications/eww/target/release/eww"

if $EWW active-windows | grep -q sound; then
  $EWW close sound
else
  $EWW open sound
fi
