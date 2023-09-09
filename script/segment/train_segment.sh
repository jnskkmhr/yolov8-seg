#!/bin/bash
# export CONFIG=data/isaac_lunalab_rgb_seg_train.yaml
export CONFIG=data/lunalab_rgb_seg.yaml
yolo segment train \
model=yolov8s-seg.yaml \
data=$CONFIG \
epochs=$1 \
rect=true \
project=yolov8_rgb_segment \
name=$2 \
batch=8 \
hsv_h=0.1 \
hsv_s=1.0 \
hsv_v=0.5 \