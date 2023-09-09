#!/bin/bash

# ==== appolo data ====
# export DATA="data/isaac_lunalab_rgb_seg_test.yaml"
# export DOMAIN="lunalab_benchmark"
# === lunalab data ====
export DATA="data/appolo_rgb_seg_test.yaml"
export DOMAIN="appolo_benchmark"

# Hyperparameters
export BATCH_SIZE=8

# validation
export MODEL_PATH="yolov8_rgb_segment/real_lunalab/weights/best.pt"
export SAVE_PATH="$DOMAIN/real_lunalab"
yolo segment val model=$MODEL_PATH data=$DATA split="test" project=$SAVE_PATH conf=$1 device=0 batch=$BATCH_SIZE

export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2/weights/best.pt"
export SAVE_PATH="$DOMAIN/raytrace_data_v2"
yolo segment val model=$MODEL_PATH data=$DATA split="test" project=$SAVE_PATH conf=$1 device=0 batch=$BATCH_SIZE

export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2/weights/best.pt"
export SAVE_PATH="$DOMAIN/pathtrace_data_v2"
yolo segment val model=$MODEL_PATH data=$DATA split="test" project=$SAVE_PATH conf=$1 device=0 batch=$BATCH_SIZE

export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2_finetune/weights/best.pt"
export SAVE_PATH="$DOMAIN/raytrace_data_v2_finetune"
yolo segment val model=$MODEL_PATH data=$DATA split="test" project=$SAVE_PATH conf=$1 device=0 batch=$BATCH_SIZE

export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune/weights/best.pt"
export SAVE_PATH="$DOMAIN/pathtrace_data_v2_finetune"
yolo segment val model=$MODEL_PATH data=$DATA split="test" project=$SAVE_PATH conf=$1 device=0 batch=$BATCH_SIZE