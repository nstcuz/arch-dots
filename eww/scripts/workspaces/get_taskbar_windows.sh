#!/bin/bash

# get client windows
hyprctl -j clients | jq '.[].initialClass'
