#!/bin/bash
export MODEL_PATH="runs/train/yolov8_rgb/train2/weights/best.pt"
export DATA_PATH="lunalab_data/lunalab_driving.mp4"
# export TRACKER="botsort.yaml"
export TRACKER="bytrack.yaml"

yolo track model=$MODEL_PATH source=$DATA_PATH conf=0.75 iou=0.5 project=runs/detect/yolov8_rgb tracker=$TRACKER