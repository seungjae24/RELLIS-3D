#!/bin/bash
export PYTHONPATH=/root/RELLIS-3D/benchmarks/HRNet-Semantic-Segmentation-HRNet-OCR/:$PYTHONPATH
python tools/test.py --cfg experiments/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-2_wd5e-4_bs_12_epoch484.yaml \
                     --data-cfg  /root/RELLIS-3D/benchmarks/SalsaNext/train/tasks/semantic/config/labels/rellis.yaml \
                     DATASET.TEST_SET val.lst \
                     OUTPUT_DIR /root/output \
                     TEST.MODEL_FILE /root/RELLIS-3D/benchmarks/HRNet-Semantic-Segmentation-HRNet-OCR/output/rellis/seg_hrnet_ocr_w48_train_512x1024_sgd_lr1e-2_wd5e-4_bs_12_epoch484/best.pth

