#!/bin/bash -x
#
# Run in container

export no_proxy="localhost, 127.0.0.1, 0.0.0.0, ::1"
cd /root/open-avatar-chat/src/handlers/tts/cosyvoice/CosyVoice
python3 webui.py --port 8888 --model /root/open-avatar-chat/app/data/pretrained_models/CosyVoice-300M/