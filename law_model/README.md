# Simple Application of DeepSeek in Chinese Law

## Project Introduction

This project is based on [LlamaFactory](http://arxiv.org/abs/2403.13372), using a series of datasets to perform LoRA fine-tuning on the [DeepSeek](https://github.com/deepseek-ai/DeepSeek-LLM) model, aiming to provide an enhanced version of the DeepSeek LLM model for the legal field. Through this fine-tuning, we can improve DeepSeek's performance on legal-related tasks, including legal text analysis, compliance checks, legal predictions, and other applications.

### Project Features
- Focused on the legal domain, using legal datasets for LoRA fine-tuning.
- Capable of answering legal-related questions, providing accurate legal information and analysis.
- Enhances the model's performance in legal tasks by strengthening a domain-specific version.

## How to Run

To run this project and obtain the enhanced DeepSeek LLM model, please create an environment according to requirements.txt and follow these steps:

### 1. Run `data.sh`
This script prepares and preprocesses the dataset. Ensure your dataset paths and other configurations are correctly set.

### 2. Run `train.sh`
This script trains the model. Depending on your hardware environment, you may need to adjust batch size or other training parameters.

### 3. Run `emerge.sh`
This script merges the trained model weights with the pre-trained weights to generate the final enhanced DeepSeek LLM model.

After completing these steps, you will have an enhanced version of the DeepSeek LLM model based on a legal dataset.

## Acknowledgments
### If you find this project helpful, please consider citing the following references:
@inproceedings{zheng2024llamafactory,
  title={LlamaFactory: Unified Efficient Fine-Tuning of 100+ Language Models},
  author={Yaowei Zheng and Richong Zhang and Junhao Zhang and Yanhan Ye and Zheyan Luo and Zhangchi Feng and Yongqiang Ma},
  booktitle={Proceedings of the 62nd Annual Meeting of the Association for Computational Linguistics (Volume 3: System Demonstrations)},
  address={Bangkok, Thailand},
  publisher={Association for Computational Linguistics},
  year={2024},
  url={http://arxiv.org/abs/2403.13372}
}

@article{deepseek-llm,
  author = {DeepSeek-AI},
  title = {DeepSeek LLM: Scaling Open-Source Language Models with Longtermism},
  journal = {arXiv preprint arXiv:2401.02954},
  year = {2024},
  url = {https://github.com/deepseek-ai/DeepSeek-LLM}
}
### Thanks to the LlamaFactory and DeepSeek LLM teams for their contributions and support.

## Personal Thoughts
This is a very simple project, but it is of great significance to me. As my first project, it allowed me to deeply understand how to combine theory with practice and inspired me to continue exploring more machine learning and AI technologies in the future. As a liberal arts student in high school and now switching to a science major in university, I feel that the intersection of AI and law is full of challenges and opportunities. Completing this project marks my first step in this exploration, and I hope to combine my liberal arts background with my science knowledge to drive more innovative applications. If you have any feedback or suggestions about this project, feel free to contact me. My email is: lichenyu191@gmail.com. I look forward to communicating with everyone!

## License
This project is open-sourced under the MIT License.