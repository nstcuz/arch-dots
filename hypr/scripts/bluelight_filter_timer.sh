#!/bin/bash

current_hour=$(date '+%H')

if [[ "$current_hour" -le 9 || "$current_hour" -ge 21 ]]; then
  hyprsunset -t 4750 -g 95
else 
  pkill hyprsunset
fi
