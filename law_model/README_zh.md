# DeepSeek 在法律方面简单应用

## 项目介绍

本项目基于 [LlamaFactory](http://arxiv.org/abs/2403.13372)，使用一系列数据集对 [DeepSeek](https://github.com/deepseek-ai/DeepSeek-LLM) 模型进行 LoRA 微调，旨在为法律领域提供一个增强版的 DeepSeek LLM 模型。通过这一微调，我们能够提升 DeepSeek 在法律相关任务上的表现，包括法律文本分析、合规性检查、法律预测等应用。

### 项目特点
- 专注于法律领域，结合法律数据集进行 LoRA 微调。
- 可以有效回答与法律相关的问题，提供准确的法律信息和分析。
- 通过加强法律领域的专用模型，使其在法律任务中表现更优异。

## 运行方法

要运行本项目并得到增强版的 DeepSeek LLM 模型，要按照requirements.txt做好环境搭建，并按照以下步骤操作：

### 1. 运行 `data.sh`
该脚本用于准备和预处理数据集。确保你的数据集路径和其他配置正确设置。

### 2. 运行 `train.sh`
该脚本用于执行模型的训练。根据你的硬件环境，可能需要调整批量大小或其他训练参数。

### 3. 运行 `emerge.sh`
该脚本用于合并训练好的模型权重和预训练权重，以生成最终的增强版 DeepSeek LLM 模型。

完成上述步骤后，你将获得基于法律领域数据集强化的 DeepSeek LLM 模型。

## 致谢
### 如果您觉得此项目有帮助，请考虑引用以下文献：
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
### 感谢 LlamaFactory 和 DeepSeek LLM 团队的贡献和支持。

## 个人感言
这是一个非常简单的项目，但对我来说意义重大。作为我的第一个项目，它让我深入了解了如何将理论与实践结合，也激励我在未来继续探索更多的机器学习和人工智能技术。作为一名高中时的文科生，在大学转向理科后，我深感AI和法律的交叉领域充满挑战和机遇。这一项目的完成是我在这条探索道路上的第一步，未来我希望能将我的文科背景与理科知识结合，推动更多创新性的应用。 如果你对这个项目有任何意见或建议，欢迎随时联系我。我的邮箱是：lichenyu191@gmail.com。期待与大家的交流！

##许可证
此项目基于 MIT 许可证 开源。
