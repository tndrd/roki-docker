#!/bin/bash
set -e

#install daemon
git clone https://github.com/tndrd/roki-mb-daemon.git --recursive
cd roki-mb-daemon
sudo -E bash install.sh
cd ..

#install motherboard interface
git clone https://github.com/tndrd/roki-mb-interface.git -b develop --recursive
cd roki-mb-interface
sudo -E bash install.sh
cd ..