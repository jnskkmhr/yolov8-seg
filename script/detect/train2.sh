#!/bin/bash
yolo task=detect \
mode=train \
model=yolov8n.yaml \
data=data/isaac_moon_rgb_v2.yaml \
epochs=$1 \
imgsz=640 \
rect=true \
project=runs/train/yolov8_rgb