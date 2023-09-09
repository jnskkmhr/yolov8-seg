#!/bin/bash
export MODEL="yolov8_rgb_segment/pathtrace_data_v2/weights/best.pt"
# export MODEL="yolov8_rgb_segment/raytrace_data_v2/weights/best.pt"

export DATA="data/appolo_rgb_seg_train.yaml"

yolo segment train \
model=$MODEL \
data=$DATA \
epochs=$1 \
project=yolov8_rgb_segment \
name=$2 \
batch=-1 \
hsv_h=0.1 \
hsv_s=1.0 \
hsv_v=0.5 \