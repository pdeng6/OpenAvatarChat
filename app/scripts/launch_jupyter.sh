#!/bin/bash -x

source activate_py_venv.sh
cd ../../src/handlers/vad/silerovad/silero_vad
jupyter-lab --ip=0.0.0.0 --port 8888 --LabApp.token='' --allow-root
