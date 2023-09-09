#!/bin/bash

# real lunalab
# export MODEL_PATH="yolov8_rgb_segment/real_lunalab/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/real_lunalab"

# export MODEL_PATH="yolov8_rgb_segment/real_lunalab_100epc/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/real_lunalab_100epc"

# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2"

# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune"

# export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/raytrace_data_v2"

# export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/raytrace_data_v2_finetune"

# # finetune with yolov8-seg pretrained model
# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_pretrain/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2_pretrain"

# export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2_pretrain/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/raytrace_data_v2_pretrain"

# export MODEL_PATH="yolov8_rgb_segment/base_model_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/base_model_finetune"

export MODEL_PATH="yolov8s-seg.pt"
export SAVE_PATH="yolov8_rgb_segment/base_model"


export DATA="data/isaac_lunalab_rgb_seg_test.yaml"
# export DATA="appolo_rgb_seg_test.yaml"

yolo segment val model=$MODEL_PATH data=$DATA split="test" project=$SAVE_PATH conf=$1 device=0