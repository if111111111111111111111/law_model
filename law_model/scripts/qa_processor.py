import json

input_file = "raw_data/qa_corpus.json"
output_file = "qa_output.json"

with open(input_file, "r", encoding="utf-8") as f:
    data = [json.loads(line) for line in f]

alpaca_data = []
for item in data:
    category = item.get("category", "法律咨询")
    instruction = f"请针对以下{category}相关法律问题提供建议。"
    input_text = item.get("question", "无问题描述")
    output_text = " ".join(item.get("answers", ["无答案"]))

    alpaca_data.append({
        "instruction": instruction,
        "input": input_text.strip(),
        "output": output_text.strip()
    })

# 保存为新的 JSON 文件
with open(output_file, "w", encoding="utf-8") as f:
    json.dump(alpaca_data, f, ensure_ascii=False, indent=4)

print(f"finish and save to {output_file}")