#!/bin/bash

# get open workspace names/numbers
hyprctl -j workspaces | jq '[.[] | select(.id != -99) | {id}]'
