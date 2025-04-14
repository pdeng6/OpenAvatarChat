#!/bin/bash -x

apt-get install -y ffmpeg unzip

CUR_DIR=`pwd`
cd ../../src/handlers/avatar/liteavatar/algo/liteavatar
cd data
unzip sample_data.zip
cd -

python3 lite_avatar.py         \
    --data_dir data/preload    \
    --audio_file funasr_local/runtime/triton_gpu/client/test_wavs/mid.wav      \
     --result_dir .

mv test_demo.mp4 $CUR_DIR