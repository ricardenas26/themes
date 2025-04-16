#!/bin/bash

VOLUME=$(pamixer --get-volume-human)

# print if the muted status is true
if [ "$VOLUME" == "muted" ]; then
  notify-send -u low -t 1000 "󰝟  Muted"
else
  notify-send -u low -t 1000 "  $VOLUME "
fi
