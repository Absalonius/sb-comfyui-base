#!/bin/bash

# Navigate into the repository folder
cd /workflow/ComfyUI/custom_nodes
#clone the IPAdapter_plus repository
git clone https://github.com/cubiq/ComfyUI_IPAdapter_plus.git
# Navigate into the comfyUi models folder
cd /workflow/ComfyUI/models/clip_vision
# Download the Clip models
curl -L -o "CLIP-ViT-bigG-14-laion2B-39B-b160k.safetensors" "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/image_encoder/model.safetensors"
# Navigate back to the models folder and create a ipadapter folder
cd ..
mkdir ipadapter
cd ipadapter
# Download the IPAdapter models
#SDXL
curl -L -o "ip-adapter_sdxl.safetensors" "https://huggingface.co/h94/IP-Adapter/resolve/main/sdxl_models/ip-adapter_sdxl.safetensors"
#SD15
curl -L -o "ip-adapter_sd15_vit-G.safetensors" "https://huggingface.co/h94/IP-Adapter/resolve/main/models/ip-adapter_sd15_vit-G.safetensors"