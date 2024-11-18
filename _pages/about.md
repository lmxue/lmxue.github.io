---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}



# About me
<span class='anchor' id='about-me'></span>

Liumeng Xue is a Postdoctoral Researcher at Hong Kong University of Science and Technology, working with Prof.[Yike Guo](https://cse.hkust.edu.hk/admin/people/faculty/profile/yikeguo) and Prof.[Wei Xue](http://wei-xue.com/). Now, I'm working on audio, music, and speech generation and understanding.
Before that, I performed postdoctoral research at The Chinese University of Hong Kong, Shenzhen (CUHK-SZ), working with Prof.[Haizhou Li](https://colips.org/~eleliha/) and Prof.[Zhizheng Wu](https://drwuz.com/). I was a co-founder of [Amphion](https://github.com/open-mmlab/Amphion), an open-source platform for Audio, Music, and Speech Generation.
I received Ph.D. degree from the Audio, Speech and Language Processing Laboratory at Northwestern Polytechnical University ([ASLP@NWPU](http://www.npu-aslp.org/english)), supervised by Prof.[Lei Xie](http://www.nwpu-aslp.org/lxie/). During my studies, I performed research at JD AI Lab (2018-2019), Tencent AI Lab (2021-2022) and Microsoft (2019-2020, 2021-2022). 
My research interests include audio, speech and language processing, audio, music, and speech generation.


# News
<span class='anchor' id='news'></span>
- 🎉 Aug 30, 2024: [Amphion: An Open-Source Audio, Music and Speech Generation Toolkit](https://arxiv.org/abs/2412.09911) is accepted by IEEE SLT 2024.
- 🎉 Aug 30, 2024: [Leveraging Diverse Semantic-based Audio Pretrained Models for Singing Voice Conversion](https://arxiv.org/abs/2310.11160) is accepted by IEEE SLT 2024.
- 🎉 Aug 20, 2024: [The ISCSLP 2024 Conversational Voice Clone (CoVoC) Challenge: Tasks, Results and Findings](https://arxiv.org/abs/2411.00064) is accepted by ISCSLP 2024.
- 🎉 Aug 20, 2024: [SingVisio](https://arxiv.org/abs/2402.12660) is accepted by Computers & Graphics.
- 🎉 Jun 13, 2024: [Multi-Level Temporal-Channel Speaker Retrieval for Zero-Shot Voice Conversion](https://ieeexplore.ieee.org/abstract/document/10542423) is accepted and published by TASLP.
- 🎉 Jun 4, 2024: [WenetSpeech4TTS](https://arxiv.org/abs/2406.05763), [Single-Codec](https://www.arxiv.org/abs/2406.07422), [TACA-Audiobook](https://arxiv.org/abs/2406.05672) are accepted by INTERSPEECH2024.
- 🎉 May 31, 2024: [Conversational Voice Clone Challenge (CoVoC)](https://www.magicdatatech.com/iscslp-2024) is launched.
- 🎉 Feb 28, 2024: [IEEE SLT workshop 2024](https://2024.ieeeslt.org) is announced.
- 🎉 Dec 18, 2023: [Amphion](https://arxiv.org/abs/2312.09911) is released. Amphion is an open-source platform for Audio, Music, and Speech Generation. 
  - I built the fundamental framework to integrate various generative tasks into a unified pipeline, including data pre-processing, model building, training and inference, etc. [Github]((https://github.com/open-mmlab/Amphion))
  - I led the reproduction of several typical TTS models and released the pre-trained models. [HuggingFace](https://huggingface.co/amphion)
  - I developed and led the [SingVisio](https://arxiv.org/abs/2402.12660) project, an interactive visualization platform that makes the inner work mechanism of diffusion model easily understanble in the context of singing voice conversion. [Try it](https://dsvc.openmmlab.org.cn/).
<!-- - 🎉 Aug 27, 2023: [IEEE SLT workshop 2024 proposals] is accepted.  -->



<!-- - [Multi-Scale Sub-Band Constant-Q Transform Discriminator for High-Fidelity Vocoder](https://arxiv.org/pdf/2311.14957.pdf) accepted by ICASSP2024, also integrated in [Amphion](https://github.com/open-mmlab/Amphion) 
- [SponTTS: modeling and transferring spontaneous style for TTS](https://arxiv.org/pdf/2311.07179.pdf) accepted by ICASSP2024.
- [Leveraging Content-based Features from Multiple Acoustic Models for Singing Voice Conversion](https://arxiv.org/pdf/2310.11160.pdf) accepted by ML4Audio @ NeurIPS 2023.
- [HiGNN-TTS: Hierarchical Prosody Modeling with Graph Neural Networks for Expressive Long-form TTS](https://arxiv.org/pdf/2309.13907.pdf)  accepted by ASRU2023.
 -->



<!-- # 📜 Research Area
<table style="border-collapse: collapse; border: none;">
  <tr style="border: none;">
    <td style="border: none;"> <font color="#0b5394"> Audio-Visual Speech Processing </font>: <BR>&nbsp;&nbsp; Audio-visual speech recognition; Sound Source localization</td>
    <td style="border: none;"> <font color="#0b5394"> Video Synthesize </font>: <BR>&nbsp;&nbsp; Talking Face Generation </td>
  </tr>
</table> -->


# Research Experience
<span class='anchor' id='research_experience'></span>

- *2021.11 - 2022.10*, Research Intern, Microsoft.
- *2021.06 - 2021.11*, Research Intern, Tencent AI Lab.
- *2019.04 - 2020.06*, Research Intern, Microsoft.
- *2018.10 - 2019.04*, Research Intern, JD.COM AI Lab.


# Selected Publications
<span class='anchor' id='publication'></span>

- [Amphion: An open-source audio, music and speech generation toolkit](https://arxiv.org/abs/2312.09911), Xueyao Zhang<sup>*</sup>, **Liumeng Xue**<sup>*</sup>, Yicheng Gu<sup>*</sup>, Yuancheng Wang<sup>*</sup>, Jiaqi Li<sup>*</sup>, Haorui He, Chaoren Wang, Songting Liu, Xi Chen, Junan Zhang, Zihao Fang, Haopeng Chen, Tze Ying Tang, Lexiao Zou, Mingxuan Wang, Jun Han, Kai Chen, Haizhou Li, Zhizheng Wu. **IEEE SLT**, 2024.

- [Leveraging Diverse Semantic-based Audio Pretrained Models for Singing Voice Conversion](https://arxiv.org/abs/2310.11160), Xueyao Zhang, Zihao Fang, Yicheng Gu, Haopeng Chen, Lexiao Zou, Junan Zhang, **Liumeng Xue**, Zhizheng Wu, IEEE SLT 2024.

- [SingVisio: Visual Analytics of Diffusion Model for Singing Voice Conversion](https://www.sciencedirect.com/science/article/abs/pii/S0097849324001936), **Liumeng Xue**, Chaoren Wang, Mingxuan Wang, Xueyao Zhang, Jun Han, Zhizheng Wu, Computers & Graphics, 2024

- [Multi-level Temporal-channel Speaker Retrieval for Zero-shot Voice Conversion](https://arxiv.org/abs/2305.07204v2), Zhichao Wang, **Liumeng Xue**, Qiuqiang Kong, Lei Xie. Yuanzhe Chen, Qiao Tian, Yuping Wang, TASLP, 2024

- [Single-Codec: Single-Codebook Speech Codec towards High-Performance Speech Generation](https://www.arxiv.org/abs/2406.07422), Hanzhao Li, **Liumeng Xue**, Haohan Guo, Xinfa Zhu, Yuanjun Lv, Lei Xie. Yunlin Chen, Hao Yin, Zhifei Li.  **INTERSPEECH**, 2024.
  
- [Text-aware and Context-aware Expressive Audiobook Speech Synthesis](https://arxiv.org/abs/2406.05672), Dake Guo, Xinfa Zhu, **Liumeng Xue**, Yongmao Zhang, Wenjie Tian, Lei Xie. **INTERSPEECH**, 2024.

- [WenetSpeech4TTS: A 12,800-hour Mandarin TTS Corpus for Large Speech Generation Model Benchmark](https://arxiv.org/abs/2406.05763), Linhan Ma, Dake Guo, Kun Song, Yuepeng Jiang, Shuai Wang, **Liumeng Xue**, Weiming Xu, Huan Zhao, Binbin Zhang, Lei Xie.  **INTERSPEECH**, 2024.

- [An Investigation of Time-Frequency Representation Discriminators for High-Fidelity Vocoder](https://arxiv.org/pdf/2404.17161), Yicheng Gu, Xueyao Zhang, **Liumeng Xue**, Haizhou Li, Zhizheng Wu, under review, 2024.

- [SponTTS: modeling and transferring spontaneous style for TTS](https://arxiv.org/pdf/2311.07179.pdf), Hanzhao Li, Xinfa Zhu, **Liumeng Xue**, Yang Song, Yunlin Chen, Lei Xie. **ICASSP**, 2024.

- [Transfer the linguistic representations from TTS to accent conversion with non-parallel data](https://arxiv.org/abs/2305.07204v2), Xi Chen, Jiakun Pei, **Liumeng Xue**, Mingyang Zhang, ICASSP, 2024

- [Multi-Scale Sub-Band Constant-Q Transform Discriminator for High-Fidelity Vocoder](https://arxiv.org/pdf/2311.14957.pdf), Yicheng Gu, Xueyao Zhang, **Liumeng Xue**, Zhizheng Wu, **ICASSP**, 2024.

- [An Initial Investigation of Neural Replay Simulator for Over-the-Air Adversarial Perturbations to Automatic Speaker Verification](https://arxiv.org/pdf/2310.05354.pdf), Jiaqi Li, Li Wang, **Liumeng Xue**, Lei Wang, Zhizheng Wu, **ICASSP**, 2024.

- [HiGNN-TTS: Hierarchical Prosody Modeling with Graph Neural Networks for Expressive Long-form TTS](https://arxiv.org/pdf/2309.13907.pdf), Dake Guo, Xinfa Zhu, **Liumeng Xue**, Tao Li, Yuanjun Lv, Yuepeng Jiang, Lei Xie. **ASRU**, 2023.

- [Leveraging Content-based Features from Multiple Acoustic Models for Singing Voice Conversion](https://arxiv.org/pdf/2310.11160.pdf), Xueyao Zhang, Yicheng Gu, Haopeng Chen, Zihao Fang, Lexiao Zou, **Liumeng Xue**, Zhizheng Wu, ML4Audio @ NeurIPS 2023. 

- [Expressive-VC: Highly Expressive Voice Conversion with Attention Fusion of Bottleneck and Perturbation Features](https://ieeexplore.ieee.org/abstract/document/10096057), Ziqian Ning, Qicong Xie, Pengcheng Zhu, Zhichao Wang, **Liumeng Xue**, Jixun Yao, Lei Xie. Mengxiao Bi. **ICASSP**, 2023.


- [Learning Noise-independent Speech Representation for High-quality Voice Conversion for Noisy Target Speakers](https://arxiv.org/abs/2207.00756), **Liumeng Xue**, Shan Yang, Na Hu, Dan Su, Lei Xie. **INTERSPEECH**, 2022

- [ParaTTS: Learning Linguistic and Prosodic Cross-sentence Information in Paragraph-based TTS](https://arxiv.org/pdf/2209.06484.pdf), **Liumeng Xue**, Frank K. Soong, Shaofei Zhang, Lei Xie. **TASLP**, 2022

<!-- **2021** -->
- [Cycle consistent network for end-to-end style transfer TTS training](https://europepmc.org/article/med/33780874) **Liumeng Xue**, Shifeng Pan, Lei He, Lei Xie. Frank K Soong. **Neural Networks** 2021

- [Controllable emotion transfer for end-to-end speech synthesis](https://ieeexplore.ieee.org/abstract/document/9362069/) Tao Li, Shan Yang, **Liumeng Xue**, Lei Xie. **ISCSLP** 2021

<!-- **2020** -->
- [On the localness modeling for the self-attention based end-to-end speech synthesis](https://europepmc.org/article/med/32088566) Shan Yang, Heng Lu, Shiyin Kang, **Liumeng Xue**, Jinba Xiao, Dan Su, Lei Xie. Dong Yu. **Neural networks** 2020

<!-- **2009** -->
- [Building a mixed-lingual neural TTS system with only monolingual data](https://www.isca-speech.org/archive/interspeech_2019/xue19_interspeech.html) **Liumeng Xue**, Wei Song, Guanghui Xu, Lei Xie. Zhizheng Wu. **INTERSPEECH** 2019
# Awards & Services
<span class='anchor' id='others'></span>
- Conference Co-organizer: [IEEE Spoken Language Technology Workshop 2024 (IEEE SLT workshop 2024)](https://2024.ieeeslt.org/)
- Challenge Co-organizer: [Conversational Voice Clone Challenge (CoVoC)](https://www.magicdatatech.com/iscslp-2024) 
- Invited Reviewer: IEEE/ACM Transactions on Audio, Speech, and Language Processing (TASLP), Speech Processing Letters, Speech Communication, ICASSP, INTERSPEECH, ASRU, SLT, ISCSLP, etc.


