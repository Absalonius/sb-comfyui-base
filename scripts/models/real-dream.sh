#!/bin/bash
# Navigate into the repository folder
cd /workspace/ComfyUI
cd models

#download real-dream model

cd checkpoints
curl -L -o "real-dream-15.safetensors" "https://civitai.com/api/download/models/712448?type=Model&format=SafeTensor&size=pruned&fp=fp16"
curl -L -o "real-dream-Pony10.safetensors" "https://civitai.com/api/download/models/712493?type=Model&format=SafeTensor&size=pruned&fp=fp16"
curl -L -o "DreamShaper.safetensors" "https://civitai.com/api/download/models/128713?type=Model&format=SafeTensor&size=pruned&fp=fp16"