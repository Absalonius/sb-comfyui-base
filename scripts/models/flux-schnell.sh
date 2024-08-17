#!/bin/bash

# Navigate into the repository folder
cd /workspace/ComfyUI
cd models
cd unet

# Download the flux model
echo "[INFO] Downloading the SCHNELL Flux Model..."
curl -L -o "flux1-schnell.sft" "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/flux1-schnell.safetensors?download=true"

# Navigate back to the models folder
cd ..

# Navigate into the Vae folder
cd vae

# Download the Vae model
curl -L -o "ae.sft" "https://huggingface.co/black-forest-labs/FLUX.1-schnell/resolve/main/ae.safetensors?download=true"

# Navigate back to the models folder
cd ..

# Navigate into the Clip folder
cd clip

# Download the Clip models
curl -L -o "t5xxl_fp8_e4m3fn.safetensors" "https://huggingface.co/Aitrepreneur/FLX/resolve/main/t5xxl_fp8_e4m3fn.safetensors?download=true"
curl -L -o "clip_l.safetensors" "https://huggingface.co/Aitrepreneur/FLX/resolve/main/clip_l.safetensors?download=true"

