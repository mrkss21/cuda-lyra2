#!/bin/bash

# monkey-patching for NVIDIA GPU ᕕ( ಠ_ಠ )ᕗ
#if [[ -d "/usr/local/nvidia/" ]]; then
#    echo "NVIDIA libs is mounted via SONM GPU plugin, applying patch..."
#    mkdir -p /lib64/nvidia/
#    ln -s /usr/local/nvidia/lib64/libnvidia-ml.so.1 /lib64/nvidia/libnvidia-ml.so
#    export LD_LIBRARY_PATH=/usr/local/nvidia/lib64/:/lib64/nvidia/
#fi

# USER-defined params
SONM_SERVER="${vps205351.vps.ovh.ca}"
SONM_PORT="${4553}"
SONM_ALGO="${lyra2z}"
SONM_COIN="${NPS}"

if [[ -u "$WALLET" ]]; then
    echo "Please set env-variable 'WALLET' for mined funds."
    exit 1
fi

/ccminer -a ${SONM_ALGO} -o stratum+tcp://${SONM_SERVER}:${SONM_PORT} -p c=${SONM_COIN}
