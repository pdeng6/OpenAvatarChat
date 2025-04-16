#!/bin/bash -x

apt-get install wget
ln -s /usr/bin/python3 /usr/bin/python

cd ~/open-avatar-chat/src/handlers/tts/cosyvoice/CosyVoice/examples/libritts/cosyvoice

export http_proxy=http://proxy-prc.intel.com:913
export https_proxy=https://proxy-prc.intel.com:913

bash run.sh