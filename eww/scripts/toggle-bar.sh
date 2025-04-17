#!/bin/bash

EWW="/home/nood/Applications/eww/target/release/eww"

if $EWW active-windows | grep -q bar; then
  $EWW close bar 
else
  $EWW open bar 
fi
