#!/bin/bash
set -e

#install roki-lowlvl
git clone https://github.com/tndrd/roki-lowlvl.git --recursive
cd roki-lowlvl
sudo -E ls Deps/ & bash install.sh
cd ..