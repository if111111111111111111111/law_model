#!/bin/bash

# 设置环境变量
export CUDA_VISIBLE_DEVICES=0

# 定义相对路径的导出目录
EXPORT_DIR="./emerged_model"

# 确保导出目录存在
mkdir -p "$EXPORT_DIR"

# 执行导出命令
/root/miniconda3/envs/llama_factory/bin/llamafactory-cli export \
    --model_name_or_path "./DeepSeek-R1-Distill-Qwen-32B" \  # 直接使用相对路径
    --adapter_name_or_path "./train/law_model" \  # 使用相对路径
    --template deepseek3 \
    --finetuning_type lora \
    --export_dir "$EXPORT_DIR" \  # 使用相对路径导出目录
    --export_size 2 \
    --export_device cpu \
    --export_legacy_format False

# 检查命令执行状态
if [ $? -eq 0 ]; then
    echo "Model export completed successfully"
else
    echo "Model export failed"
    exit 1
fi
