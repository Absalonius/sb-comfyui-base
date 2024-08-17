#!/bin/bash

# Navigate into the repository folder
cd /workspace/ComfyUI/custom_nodes
#clone the AnimateDiff Evolved repository
git clone https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git
#install VHS
git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
#install tbox
git clone https://github.com/ai-shizuka/ComfyUI-tbox.git
#was node
git clone https://github.com/WASasquatch/was-node-suite-comfyui.git
#controlnetAux
git clone https://github.com/Fannovel16/comfyui_controlnet_aux.git
#install advance controlnet
git clone https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet.git
# Navigate into the comfyUi models folder
mkdir -p /workspace/ComfyUI/models/animatediff_models
cd /workspace/ComfyUI/models/animatediff_models
#Motion Models
#SD15
echo "downloading v3_sd15_mm Checkpoint"
curl -L -o "v3_sd15_mm.ckpt" "https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/v3_sd15_mm.ckpt?download=true"
#SDXL
echo "downloading SDXL_mm Checkpoint"
curl -L -o "mm_sdxl_v10_beta.ckpt" "https://huggingface.co/guoyww/animatediff/resolve/cd71ae134a27ec6008b968d6419952b0c0494cf2/mm_sdxl_v10_beta.ckpt?download=true"
#lightning model
echo "downloading lightning_8step Checkpoint"
curl -L -o "animatediff_lightning_8step_comfyui.safetensors" "https://dagshub.com/ByteDance/AnimateDiff-Lightning/raw/159b14fad8fa0c387d721642a3b695b2f45eea82/model/animatediff_lightning_8step_diffusers.safetensors"
#Motion Loras
