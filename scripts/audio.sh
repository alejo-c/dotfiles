#!/bin/bash

case $1 in
volume)
  case $2 in
  lower) pactl set-sink-volume @DEFAULT_SINK@ -1% ;;
  raise) pactl set-sink-volume @DEFAULT_SINK@ +1% ;;
  mute) wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle ;;
  big)
    case $3 in
    lower) pactl set-sink-volume @DEFAULT_SINK@ -5% ;;
    raise) pactl set-sink-volume @DEFAULT_SINK@ +5% ;;
    esac
    ;;
  esac
  ;;
microphone)
  pactl set-source-mute @DEFAULT_SOURCE@ toggle
  # amixer set Capture toggle
  ;;
player)
  case $2 in
  toggle) playerctl play-pause ;;
  next) playerctl next ;;
  previous) playerctl previous ;;
  esac
  ;;
esac
