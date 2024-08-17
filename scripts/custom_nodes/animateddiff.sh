#!/bin/bash

# Navigate into the repository folder
cd /workspace/ComfyUI/custom_nodes
#clone the AnimateDiff Evolved repository
git clone https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git
#install VHS
git clone https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
# Navigate into the comfyUi models folder
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
curl -L -o "animatediff_lightning_8step_comfyui.safetensors" "https://dagshub.com/ByteDance/AnimateDiff-Lightning/src/main/model/animatediff_lightning_8step_comfyui.safetensors"
#Motion Loras
