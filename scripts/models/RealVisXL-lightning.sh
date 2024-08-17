#!/bin/bash
# Navigate into the repository folder
cd /workspace/ComfyUI
cd models

#download real-dream model

cd checkpoints
curl -L -o "realvisXL-lightning.safetensors" "https://civitai.com/api/download/models/361593?type=Model&format=SafeTensor&size=pruned&fp=fp16"