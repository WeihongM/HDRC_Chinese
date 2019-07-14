

# CUDA_VISIBLE_DEVICES=0,1 python -B ./tools/test.py \
# configs/wh/cascade_mask_r50_fpn_1x.py \
# work_dirs/guji_cascade_mask_r50_fpn_1x_all/epoch_19.pth \
# --gpus 2 \
# --out ./work_dirs/guji_cascade_mask_r50_fpn_1x_all/infer/thresh03_/out.pkl \
# --eval 'proposal' 'bbox' 'segm'



CUDA_VISIBLE_DEVICES=0,1 python -B ./tools/test.py \
configs/wh/cascade_mask_rcnn_r101_fpn_1x.py \
work_dirs/cascade_mask_rcnn_r101_fpn_1x/epoch_20.pth \
--gpus 2 \
--out ./work_dirs/cascade_mask_rcnn_r101_fpn_1x/infer/thresh03_/out.pkl \
--eval 'proposal' 'bbox' 'segm'





# CUDA_VISIBLE_DEVICES=0,1 python -B ./tools/test.py \
# configs/wh/cascade_mask_rcnn_dconv_c3-c5_r50_fpn_1x.py \
# work_dirs/cascade_mask_rcnn_dconv_c3-c5_r50_fpn_1x/epoch_19.pth \
# --gpus 2 \
# --out ./work_dirs/cascade_mask_rcnn_dconv_c3-c5_r50_fpn_1x/infer/out.pkl \
# --eval 'proposal' 'bbox' 'segm'
