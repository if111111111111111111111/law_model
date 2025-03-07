#!/bin/bash

export FORCE_TORCHRUN=1
export CUDA_VISIBLE_DEVICES=0

/root/miniconda3/envs/llama_factory/bin/llamafactory-cli train \
    --stage sft \
    --do_train \
    --model_name_or_path "./DeepSeek-R1-Distill-Qwen-32B" \
    --dataset train_data \
    --dataset_dir "./train_data" \
    --template deepseek3 \
    --finetuning_type lora \
    --output_dir "./train/law_model" \
    --overwrite_cache \
    --overwrite_output_dir \
    --cutoff_len 2048 \
    --preprocessing_num_workers 8 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 16 \
    --lr_scheduler_type cosine_with_restarts \
    --logging_steps 10 \
    --warmup_ratio 0.1 \
    --save_total_limit 3 \
    --save_steps 500 \
    --learning_rate 5e-6 \
    --num_train_epochs 2 \
    --bf16 True \
    --gradient_checkpointing \
    --max_grad_norm 1.0 \
    --flash_attn fa2 \
    --deepspeed "./law_model/configs/ds_config.json"

if [ $? -eq 0 ]; then
    echo "Training completed successfully"
else
    echo "Training failed"
    exit 1
fi


