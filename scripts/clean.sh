#!/bin/bash

sudo rm -fr ~/.cache/thumbnails/
sudo rm -fr ~/.cache/paru/clone/
sudo rm -fr ~/.cache/nsxiv/
sudo rm -fr ~/.cache/tldr/
sudo rm -fr ~/.cache/wal/schemes/
sudo rm -fr ~/.cache/waypaper/
sudo rm -fr ~/.cache/ueberzugpp/

cliphist wipe

paru -Rns "$(paru -Qtdq)"
paru -Scc

trash-list
trash-empty
