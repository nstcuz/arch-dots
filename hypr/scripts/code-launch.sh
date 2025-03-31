#!/bin/bash

APP="vscodium"
CLASS="VSCodium"
WORKSPACE=3

hyprctl keyword windowrulev2 "workspace $WORKSPACE silent, class:^($CLASS)$"
$APP &
