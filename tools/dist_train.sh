#!/usr/bin/env bash

# PYTHON=${PYTHON:-"python"}

# $PYTHON -m torch.distributed.launch --nproc_per_node=$2 $(dirname "$0")/train.py $1 --launcher pytorch ${@:3}



# CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 --master_port 2102 \
# ./tools/train.py \
# ./configs/wh/cascade_mask_r50_fpn_1x.py \
# --resume_from backup/guji_cascade_mask_r50_fpn_1x_all/epoch_19.pth \
# --launcher 'pytorch'


# CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 --master_port 2103 \
# ./tools/train.py \
# ./configs/wh/cascade_mask_rcnn_dconv_c3-c5_r50_fpn_1x.py \
# --launcher 'pytorch'


CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 --master_port 2104 \
./tools/train.py \
./configs/wh/cascade_mask_rcnn_r101_fpn_1x.py \
--launcher 'pytorch'
