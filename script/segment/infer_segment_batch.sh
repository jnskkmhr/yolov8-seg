#!/bin/bash
# batched inference of different models

# inference

# ==== appolo data ====
export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/AS17-137/test/images"
export DOMAIN="appolo_benchmark"

# ==== lunalab data ====
# export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435_yolo/mid/test/images"
# export DOMAIN="lunalab_benchmark"

export MODEL_PATH="yolov8_rgb_segment/real_lunalab/weights/best.pt"
export SAVE_PATH="$DOMAIN/real_lunalab"
yolo segment predict model=$MODEL_PATH conf=$1 source=$DATA_PATH project=$SAVE_PATH device=0

export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2/weights/best.pt"
export SAVE_PATH="$DOMAIN/raytrace_data_v2"
yolo segment predict model=$MODEL_PATH conf=$1 source=$DATA_PATH project=$SAVE_PATH device=0

export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2/weights/best.pt"
export SAVE_PATH="$DOMAIN/pathtrace_data_v2"
yolo segment predict model=$MODEL_PATH conf=$1 source=$DATA_PATH project=$SAVE_PATH device=0

export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune/weights/best.pt"
export SAVE_PATH="$DOMAIN/pathtrace_data_v2_finetune"
yolo segment predict model=$MODEL_PATH conf=$1 source=$DATA_PATH project=$SAVE_PATH device=0

export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2_finetune/weights/best.pt"
export SAVE_PATH="$DOMAIN/raytrace_data_v2_finetune"
yolo segment predict model=$MODEL_PATH conf=$1 source=$DATA_PATH project=$SAVE_PATH device=0