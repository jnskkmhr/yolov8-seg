#!/bin/bash
export MODEL_PATH="runs/train/yolov8_rgb/train2/weights/best.pt"
export DATA_PATH="lunalab_data/lunalab_driving.mp4"
yolo task=detect mode=predict model=$MODEL_PATH conf=0.6 source=$DATA_PATH project=runs/detect/yolov8_rgb