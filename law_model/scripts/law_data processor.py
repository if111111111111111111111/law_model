import os
import json

input_folder = "raw_data/lawdata"
output_file = "output.json"

alpaca_data = []

for filename in os.listdir(input_folder):
    if filename.endswith(".json"):
        file_path = os.path.join(input_folder, filename)

        with open(file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)

            if "answer" in data and "candidate_answer" in data:
                alpaca_format = {
                    "instruction": f"根据以下情况判断：{data['cause']}",
                    "input": data['question'],
                    "output": data['answer'],
                    "candidate_answer": data['candidate_answer']
                }
            elif "candidate_answer" in data:
                alpaca_format = {
                    "instruction": f"根据以下情况判断：{data['cause']}",
                    "input": data['question'],
                    "output": data['candidate_answer'][0],
                    "candidate_answer": data['candidate_answer']
                }
            else:
                continue

            alpaca_data.append(alpaca_format)

with open(output_file, 'w', encoding='utf-8') as output:
    json.dump(alpaca_data, output, ensure_ascii=False, indent=2)

print(f"finish processing, output to {output_file}")