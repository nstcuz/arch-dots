#!/bin/bash

hyprctl -j clients | jq -c '[.[].initialClass] | unique'
