### HCII LAB on Historical Document Reading Challenge

#### Installation

---
#### Requirements
- Linux
- Python 3.5+
- Pytorch 1.0
- CUDA 9.0
- NCCL 2+
- GCC 4.9+
- mmcv

#### Install environment
Our project is based on mmlab-mmdetection repository.

a. create your own environment name

```
conda create -n environ_name python=3.7 -y
conda activate environ_name
conda install cython
```
b.install pytorch version
```
conda install pytorch==1.0 torchvision cudatoolkit=9.0 -c pytorch
```
c. Compile cuda extensions.
```
./compile.sh
```
d.Install needed package
```
python setup.py develop
```

---

#### Test single image

Note:
1.You can modify the read image filename(file: tools/single_test.py)

2.After modify the input image filename, you can simply run the command below which will save the detection result.

```
python tools/single_test.py
```

3.The detection output result includes __file: tmp.txt and visualize output.__
> tmp.txt stores the coordinates output
> file format:
> left, top, right, bottom, probability

4.After get the output result, choose the post_process steps to get the final output(code in file post_process.py). 