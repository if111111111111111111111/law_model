#!/bin/bash

export CUDA_VISIBLE_DEVICES=0

EXPORT_DIR="./emerged_model"

mkdir -p "$EXPORT_DIR"

/root/miniconda3/envs/llama_factory/bin/llamafactory-cli export \
    --model_name_or_path "./DeepSeek-R1-Distill-Qwen-32B" \
    --adapter_name_or_path "./train/law_model" \
    --template deepseek3 \
    --finetuning_type lora \
    --export_dir "$EXPORT_DIR" \
    --export_size 2 \
    --export_device cpu \
    --export_legacy_format False

if [ $? -eq 0 ]; then
    echo "Model export completed successfully"
else
    echo "Model export failed"
    exit 1
fi
