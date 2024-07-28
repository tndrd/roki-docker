#!/bin/bash/
set -e

# Set environment variables
PARAMS_FILE=/setup/roki-lowlvl/Misc/default-params.sh

source $PARAMS_FILE
echo "source ${PARAMS_FILE}" >> ~/.bashrc

# Start daemon
mbctl daemon start > /dev/null

mkdir -p ${ROKI_WORKDIR}
cd ${ROKI_WORKDIR}
/bin/bash