#!/bin/bash

sudo du -xh --max-depth=1 "$1" | sort -h
