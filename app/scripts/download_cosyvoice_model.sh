#!/bin/bash -x
#
# Run in container

mkdir -p ../data/pretrained_models
cd ../data
git clone https://www.modelscope.cn/iic/CosyVoice-300M.git pretrained_models/CosyVoice-300M