#!/bin/bash

EWW="/home/nood/Applications/eww/target/release/eww"

if $EWW active-windows | grep -q control-center; then
  $EWW close control-center
else
  $EWW open control-center
fi
