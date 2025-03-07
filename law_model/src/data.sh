#!/bin/bash

files=(
    "./law_model/scripts/qa_processor.py"
    "./law_model/scripts/law_data_processor.py"
    "./law_model/scripts/emerged_data.py"
    "./law_model/scripts/dataset_info_update.py"
)

for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "Executing: $file"
        python3 "$file" || { echo "Execution failed: $file"; exit 1; }
    else
        echo "Error: File not found - $file"
        exit 1
    fi
done
