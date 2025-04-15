#!/bin/bash -x

export http_proxy=http://proxy-prc.intel.com:913
export https_proxy=http://proxy-prc.intel.com:913

apt-get install -y portaudio19-dev

source ./activate_py_venv.sh

pip install jupyterlab matplotlib pyaudio colab
