#!/bin/bash

wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}'