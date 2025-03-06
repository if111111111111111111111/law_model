#!/bin/bash

files=(
    "./law_model/scripts/qa_processor.py"
    "./law_model/scripts/law_data_processor.py"
    "./law_model/scripts/emerged_data.py"
    "./law_model/scripts/dataset_info_update.py"
)

# 遍历执行
for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "正在执行: $file"
        python3 "$file" || { echo "执行失败: $file"; exit 1; }
    else
        echo "错误: 文件不存在 - $file"
        exit 1
    fi
done
