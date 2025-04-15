#!/bin/bash

# get activeworkspace num
hyprctl -j activeworkspace | jq '.id'

