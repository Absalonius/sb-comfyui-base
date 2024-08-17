#!/bin/bash
# Navigate into the custom_nodes folder
cd /workspace/ComfyUI
cd models
# navigate into the controlnet folder
cd controlnet

# install depth model
curl -L -o "control_v11f1p_sd15_depth_fp16.safetensors" "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors?download=true"
# install openpose model
curl -L -o "control_v11p_sd15_openpose_fp16.safetensors" "https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors?download=true"
