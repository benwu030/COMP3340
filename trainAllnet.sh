#!/bin/bash
cd "/mnt/c/Users/Ben Wu/Desktop/COMP3340/CNN_Image_Classification_Code/CNN_Image_Classification_Code" # python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
eval "$(conda shell.bash hook)"
conda activate mmcls2
python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
python tools/train.py  --config 'configs/project/resnet18_flowers_bs128.py' --work-dir 'output/resnet18'
python tools/train.py  --config 'configs/project/resnet50_flowers.py' --work-dir 'output/resnet50'
python tools/train.py  --config 'configs/project/resnet101_flowers.py' --work-dir 'output/resnet101'
python tools/train.py  --config 'configs/project/resnet152_flowers.py' --work-dir 'output/resnet152'
python tools/train.py  --config 'configs/project/vgg11_flowers.py' --work-dir 'output/vgg11'
python tools/train.py  --config 'configs/project/vgg13_flowers.py' --work-dir 'output/vgg13'
python tools/train.py  --config 'configs/project/vgg16_flowers.py' --work-dir 'output/vgg16'
python tools/train.py  --config 'configs/project/vgg19_flowers.py' --work-dir 'output/vgg19'