#!/bin/bash

val=0

case "$1" in
high) val=213 ;;
mid) val=106.5 ;;
low) val=53.25 ;;
esac

case "$2" in
up) sign=+ ;;
down) sign=- ;;
esac

brightnessctl -q s "$val$sign"
