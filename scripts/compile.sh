#!/bin/bash

set -e

CONFIG_FILENAME="$(ls -t $HOME/Downloads/*.json | head -n 1)"
KEYBOARD_TYPE="crkbd/rev4_1/standard"

if [[ "$(jq -r '.keyboard' "$CONFIG_FILENAME")" != "$KEYBOARD_TYPE" ]]; then
  echo "Error: Keyboard type does not match. Expected $KEYBOARD_TYPE." >&2
  exit 1
fi

cp "$CONFIG_FILENAME" ./configs/ae4_corne_4_1_standard.json
multipass exec qmk -- bash -c "/home/ubuntu/.local/bin/qmk compile -c -kb $KEYBOARD_TYPE /home/ubuntu/mounted/configs/ae4_corne_4_1_standard.json; mv ~/qmk_firmware/crkbd_rev4_1_standard_ae4_corne_4_1_standard.uf2 ~/mounted/imgs/crkbd_rev4_1_standard_ae4_corne_4_1_standard.uf2"

