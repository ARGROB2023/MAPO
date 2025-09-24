<h1 align="center">MAPO: MIXED ADVANTAGE POLICY OPTIMIZATION</h1>

<p align="center"><em>Wenke Huang, Quan Zhang, Yiyang Fang, Jian Liang, Xuankun Rong, Huanjin Yao, Guancheng Wan, Ke Liang, Wenwen He, Mingjun Li, Leszek Rutkowski, Mang Ye, Bo Du, Dacheng Tao</em></p>

<p align="center">
<a href="https://arxiv.org/abs/2509.18849"><img src="https://img.shields.io/badge/arXiv-2509.18849-b31b1b.svg" alt="arXiv Badge"></a>
<a href="https://huggingface.co/collections/WilliamHuang91/mapo-mixed-advantage-policy-optimization-68cb60c563222febca0e6e90">
<img src="https://img.shields.io/badge/🤗%20HuggingFace-Collection-blue">
</a>
<a href="https://github.com/WenkeHuang/MAPO"><img src="https://img.shields.io/github/stars/WenkeHuang/MAPO?style=social" alt="GitHub stars">
</a>
</p>

<div align="center">
<img alt="method" src="asserts/Framework.png">
</div>

<h2> 🙌 Abstract </h2>

Recent advances in reinforcement learning for foundation models, such as Group Relative Policy Optimization (GRPO), have significantly improved the performance of foundation models on reasoning tasks. Notably, the advantage function serves as a central mechanism in GRPO for ranking the trajectory importance. However, existing explorations encounter both advantage reversion and advantage mirror problems, which hinder the reasonable advantage allocation  across different query samples. In this work, we propose an easy but effective GRPO strategy, **M**ixed **A**dvantage **P**olicy **O**ptimization (**MAPO**). We reveal that the trajectory appears with different certainty and propose the advantage percent deviation for samples with high-certainty trajectories. Furthermore, we dynamically reweight the advantage function for samples with varying trajectory certainty, thereby adaptively configuring the advantage function to account for sample-specific characteristics. Comparison with related state-of-the-art methods, along with ablation studies on different advantage variants, validates the effectiveness of our approach.

<h2 id="citation"> 🥳 Citation </h2>

Please kindly cite this paper in your publications if it helps your research:

```bibtex
@article{MAPO_arXiv25,
    title={MAPO: MIXED ADVANTAGE POLICY OPTIMIZATION},
    author={Huang, Wenke and Zhang, Quan and Fang, Yiyang and Liang, Jian and Rong, Xuankun and Yao, Huanjin and Wan, Guancheng and Liang, Ke and He, Wenwen and Li, Mingjun and Rutkowski, Leszek and Ye, Mang and Du, Bo and Tao, Dacheng},
    journal={arXiv preprint arXiv:2509.18849},
    year={2025}
}
```
