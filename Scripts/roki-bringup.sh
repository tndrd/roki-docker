#!/bin/bash/
set -e

# Set environment variables
source /setup/roki-mb-daemon/params.sh
echo "source /setup/roki-mb-daemon/params.sh" >> ~/.bashrc

# Start daemon
mbctl daemon start > /dev/null

mkdir -p ${ROKI_WORKDIR}
cd ${ROKI_WORKDIR}
/bin/bash