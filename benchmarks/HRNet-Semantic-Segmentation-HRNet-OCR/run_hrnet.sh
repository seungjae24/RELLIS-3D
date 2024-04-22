#!/bin/bash
export PYTHONPATH=/root/RELLIS-3D/benchmarks/HRNet-Semantic-Segmentation-HRNet-OCR/:$PYTHONPATH
# echo $PYTHONPATH
PY_CMD="python -m torch.distributed.launch --nproc_per_node=2"
# python -m torch.distributed.launch tools/train.py --cfg experiments/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-2_wd5e-4_bs_12_epoch484.yaml
$PY_CMD tools/train.py --cfg experiments/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-2_wd5e-4_bs_12_epoch484.yaml
