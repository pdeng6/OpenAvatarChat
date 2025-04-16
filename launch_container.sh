#!/usr/bin/env bash
# 初始化变量

if [ -z $BAILIAN_API_KEY ]
then
    echo "Please export your BAILIAN_API_KEY as enviroment variable."
    exit
fi

#CONFIG_PATH="chat_with_minicpm.yaml"
CONFIG_PATH="chat_with_openai_compatible"

echo "${CONFIG_PATH}"

docker run --rm -it --name open-avatar-chat \
    --env "DASHSCOPE_API_KEY=$BAILIAN_API_KEY"  \
    -v `pwd`/build:/root/open-avatar-chat/build \
    -v `pwd`/models:/root/open-avatar-chat/models \
    -v `pwd`/ssl_certs:/root/open-avatar-chat/ssl_certs \
    -v `pwd`/config:/root/open-avatar-chat/config \
    -v `pwd`/app:/root/open-avatar-chat/app \
    -p 8282:8282 \
    -p 8888:8888    \
    --entrypoint bash \
    open-avatar-chat:0.0.1
