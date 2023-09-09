#!/bin/bash

# data v1
#export MODEL_PATH="yolov8_rgb_segment/pathtrace_data/weights/best.pt"
#export SAVE_PATH="yolov8_rgb_segment/pathtrace_data"
# export MODEL_PATH="yolov8_rgb_segment/rtxtrace_data/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/rtxtrace_data"
# export MODEL_PATH="yolov8_rgb_segment/mix_data/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/mix_data"

# data v2
# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2"

# # data v2 finetune
# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune"

#### LATEST
# # # real lunalab
# export MODEL_PATH="yolov8_rgb_segment/real_lunalab/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/real_lunalab"

# export MODEL_PATH="yolov8_rgb_segment/real_lunalab_100epc/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/real_lunalab_100epc"

export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2/weights/best.pt"
export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2"

# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2_finetune"

# export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/raytrace_data_v2"

# export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/raytrace_data_v2_finetune"

# pretrain
# export MODEL_PATH="yolov8_rgb_segment/pathtrace_data_v2_pretrain/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/pathtrace_data_v2_pretrain"

# export MODEL_PATH="yolov8_rgb_segment/raytrace_data_v2_pretrain/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/raytrace_data_v2_pretrain"
##

# export MODEL_PATH="yolov8_rgb_segment/base_model_finetune/weights/best.pt"
# export SAVE_PATH="yolov8_rgb_segment/base_model_finetune"

# export MODEL_PATH="yolov8s-seg.pt"
# export SAVE_PATH="yolov8_rgb_segment/base_model"
#################

# Data (HD)
# video streams
# export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435/d435_25deg_high/d435i_high_full.mp4"
# export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435/d435_25deg_low/d435i_low_full.mp4"
# export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435/d435_25deg_mid/d435_mid_full.mp4"
# export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d455/rock_recognition_Early_DEMO_3.avi"

# image dirs
# export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435_yolo/mid/test/images"
export DATA_PATH="/media/lunar4/3C2283022282BFFE/jnskkmhr/AS17-137"

yolo segment predict model=$MODEL_PATH conf=$1 source=$DATA_PATH project=$SAVE_PATH device=0
