
# mmdetection

## Introduction

The master branch works with **PyTorch 1.0** or higher. If you would like to use PyTorch 0.4.1,
please checkout to the [pytorch-0.4.1](https://github.com/open-mmlab/mmdetection/tree/pytorch-0.4.1) branch.

mmdetection is an open source object detection toolbox based on PyTorch. It is
a part of the open-mmlab project developed by [Multimedia Laboratory, CUHK](http://mmlab.ie.cuhk.edu.hk/).

![demo image](demo/coco_test_12510.jpg)


## Benchmark and model zoo

Supported methods and backbones are shown in the below table.
Results and models are available in the [Model zoo](MODEL_ZOO.md).

|                    | ResNet   | ResNeXt  | SENet    | VGG      |
|--------------------|:--------:|:--------:|:--------:|:--------:|
| RPN                | ✓        | ✓        | ☐        | ✗        |
| Fast R-CNN         | ✓        | ✓        | ☐        | ✗        |
| Faster R-CNN       | ✓        | ✓        | ☐        | ✗        |
| Mask R-CNN         | ✓        | ✓        | ☐        | ✗        |
| Cascade R-CNN      | ✓        | ✓        | ☐        | ✗        |
| Cascade Mask R-CNN | ✓        | ✓        | ☐        | ✗        |
| SSD                | ✗        | ✗        | ✗        | ✓        |
| RetinaNet          | ✓        | ✓        | ☐        | ✗        |
| Hybrid Task Cascade| ✓        | ✓        | ☐        | ✗        |

Other features
- [x] DCNv2
- [x] Group Normalization
- [x] Weight Standardization
- [x] OHEM
- [x] Soft-NMS
- [ ] Mixed Precision (FP16) Training (coming soon)


## Installation

Please refer to [INSTALL.md](INSTALL.md) for installation and dataset preparation.


## Get Started

Please see [GETTING_STARTED.md](GETTING_STARTED.md) for the basic usage of mmdetection.


## Citation

If you use our codebase or models in your research, please cite this project.
We will release a paper or technical report later.

```
@misc{mmdetection2018,
  author =       {Kai Chen and Jiangmiao Pang and Jiaqi Wang and Yu Xiong and Xiaoxiao Li
                  and Shuyang Sun and Wansen Feng and Ziwei Liu and Jianping Shi and
                  Wanli Ouyang and Chen Change Loy and Dahua Lin},
  title =        {mmdetection},
  howpublished = {\url{https://github.com/open-mmlab/mmdetection}},
  year =         {2018}
}
```
