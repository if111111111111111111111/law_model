import json
import os

files = [
    "output.json",
    "output_alpaca.json"
]

output_path = "train_data/train_data.json"

merged_data = []

for file in files:
    with open(file, "r", encoding="utf-8") as f:
        data = json.load(f)
        if isinstance(data, list):
            merged_data.extend(data)
        else:
            raise ValueError(f"{file} is not the JSON ")

os.makedirs(os.path.dirname(output_path), exist_ok=True)

with open(output_path, "w", encoding="utf-8") as f:
    json.dump(merged_data, f, ensure_ascii=False, indent=4)

print(f"Alpaca JSON is merged and saved to {output_path}")