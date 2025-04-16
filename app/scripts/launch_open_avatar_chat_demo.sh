#!/bin/bash -x

ln -s /usr/bin/python3 /usr/bin/python

export http_proxy=http://proxy-prc.intel.com:913
export https_proxy=http://proxy-prc.intel.com:913
export no_proxy="localhost, 127.0.0.1, 0.0.0.0, ::1"

cd /root/open-avatar-chat

python3 src/demo.py --config config/chat_with_openai_compatible.yaml
