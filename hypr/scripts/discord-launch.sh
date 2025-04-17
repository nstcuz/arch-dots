#!/bin/bash

APP="discord"
WORKSPACE=5

hyprctl keyword windowrulev2 "workspace $WORKSPACE silent, class:^($APP)$"
$APP &