#!/usr/bin/env bash

if [[ -n "$SOUND_DISABLE_BLUETOOTH" ]]; then
  echo "Bluetooth is disabled, exiting..."
  exit 0
fi

export BLUETOOTH_DEVICE_NAME=${BLUETOOTH_DEVICE_NAME:-$SOUND_DEVICE_NAME}

exec /usr/src/bluetooth-agent
