#!/bin/bash

current_hour=$(date '+%H')

# if [[ "$current_hour" -le 8 || "$current_hour" -ge 21 ]]; then
#   if ! pgrep -x hyprsunset > /dev/null; then
#     hyprsunset -t 4750 -g 90
#   fi
# else 
#   pkill hyprsunset
# fi

if [["$current_hour" -ge 14]]; then
  if (! pgrep -x hyprsunset > /dev/null); then
  hyprsunset -t 4750 -g 90
  fi
else 
  pkill hyprsunset
fi
EOF
