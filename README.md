# Sim-to-real with yolov8
author : Junnosuke Kamohara (kamohara.junnosuke.t6@dc.tohoku.ac.jp)

## Step1 : Prepare synthetic and real data

### Synthetic
Follow [this repository](https://github.com/jnskkmhr/isaac2coco_process).

### Real
We offer two types of data : real Lunalab data and real lunar data from Appoo 17

- Real Lunalab 
    - D435 recording with low light position : [link](https://universe.roboflow.com/srlresearch/d435_25degree_hd_6fps_nano_full_low)
    - D435 recording with mid light position : [link](https://universe.roboflow.com/srlresearch/d435_25degree_hd_6fps_nano_full_mid)
    - D435 recording with high light position : [link](https://universe.roboflow.com/srlresearch/d435_25degree_hd_6fps_nano_full_high)
- Appolo images
    - AS17-137 images : [link](https://universe.roboflow.com/srlresearch/as17-137) (original images from [here](https://history.nasa.gov/alsj/a17/images17.html))

## Step2 : Install ultralytics
Either install `ultralytics` in host environment or virtual environment like venv and docker. <br>
This work uses venv. 

```
python3 -m venv yolov8_env
source yolov8_env/bin/activate
pip install ultralytics
```
Optionally, you may update ultralytics into `ultralytics == 8.0.73` and `wandb == 0.15.3` to use Weight & Bias log recording.

## Step3 : Data config
Example data configuration files are in `data/`. 
For segmentation, you may write like the following.
```yaml
# D435 mid angle
path: /media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435_yolo/high-low
train: /media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435_yolo/high-low/train
val: /media/lunar4/3C2283022282BFFE/jnskkmhr/lunalab_d435_yolo/high-low/valid

# class name
names:
  0: rock
```

## Step4 Training
Train your model

### From scratch
```
bash script/segment/train_segment.sh {num_epoch} {save_name}
```
All of the results are saved under `{save_name}/`. <br>
Also you need to specify path to your own data config file by changing the value of `CONFIG` at the beginning of `train_segment.sh`

### From yolov8-seg pretrained model
```
bash script/segment/train_segment_pretrain.sh {num_epoch} {save_name}
```

### Finetunening
```
bash script/segment/train_segment_finetune.sh {num_epoch} {save_name}
```

## Step5 Evaluation
Evalute trained model on labeled test set. <br>
This will return AP, AP50 from COCO benchmark for both object detection and segmentation. 

Run the following to find score for all the models you trained
```
bash script/segment/benchmark.sh {confidence_threshold}
```