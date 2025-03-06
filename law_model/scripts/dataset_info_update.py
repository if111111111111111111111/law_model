import json
import os

dataset_info = {
    "train_data": {
        "file_name": "train_data/train_data.json",
        "columns": {
            "prompt": "instruction",
            "query": "input",
            "response": "output"
        },
        "optional_columns": ["candidate_answer"]
    }
}

dataset_info_path = 'LLaMA-Factory/dataset_info.json'

dataset_name = list(dataset_info.keys())[0]

if os.path.exists(dataset_info_path):
    with open(dataset_info_path, 'r') as f:
        data = json.load(f)

    if dataset_name in data:
        print(f"Dataset '{dataset_name}' is already registered in {dataset_info_path}. Skipping registration.")
    else:
        data.update(dataset_info)
        with open(dataset_info_path, 'w') as f:
            json.dump(data, f, indent=4)
        print(f"Dataset '{dataset_name}' has been registered in {dataset_info_path}.")
else:
    os.makedirs(os.path.dirname(dataset_info_path), exist_ok=True)
    data = dataset_info
    with open(dataset_info_path, 'w') as f:
        json.dump(data, f, indent=4)
    print(f"Dataset '{dataset_name}' has been registered in new file {dataset_info_path}.")