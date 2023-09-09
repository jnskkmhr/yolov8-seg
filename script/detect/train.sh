#!/bin/bash
yolo task=detect mode=train model=yolov8n.pt data=data/isaac_moon_rgb.yaml epochs=$1 imgsz=640 rect=true project=runs/train/yolov8_rgb