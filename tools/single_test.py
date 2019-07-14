import mmcv
from mmcv.runner import load_checkpoint
from mmdet.models import build_detector
from mmdet.apis import inference_detector, show_result
from build.post import post_proce

cfg = mmcv.Config.fromfile('configs/wh/cascade_mask_r50_fpn_1x.py')
cfg.model.pretrained = None

# construct the model and load checkpoint
model = build_detector(cfg.model, test_cfg=cfg.test_cfg)
_ = load_checkpoint(model, 'work_dirs/guji_cascade_mask_r50_fpn_1x_all/epoch_19.pth')

# test a single image
img = mmcv.imread('test.jpg')
result = inference_detector(model, img, cfg)
post_proce = post_proce()
post_proce.rm_inter(result)



# show_result(img, result)

# test a list of images
# imgs = ['test1.jpg', 'test2.jpg']
# for i, result in enumerate(inference_detector(model, imgs, cfg, device='cuda:0')):
#     print(i, imgs[i])
#     show_result(imgs[i], result)
