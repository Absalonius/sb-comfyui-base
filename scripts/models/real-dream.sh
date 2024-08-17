#!/bin/bash
# Navigate into the repository folder
cd /workflow/ComfyUI
cd models

#download real-dream model

cd checkpoints
curl -L -o "real-dream.safetensors" "https://civitai.com/api/download/models/712493?type=Model&format=SafeTensor&size=pruned&fp=fp16"