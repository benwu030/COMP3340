#!/bin/bash
cd "/mnt/c/Users/Ben Wu/Desktop/COMP3340/CNN_Image_Classification_Code/CNN_Image_Classification_Code" # python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
eval "$(conda shell.bash hook)"
conda activate mmcls2
python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet'
python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet' --cfg-options 'optimizer.lr=1e-2' 'optimizer.weight_decay=1e-6'
python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet' --cfg-options 'optimizer.lr=1e-3' 'optimizer.weight_decay=1e-9'
python tools/train.py  --config 'configs/project/alexnet_flowers.py' --work-dir 'output/alexnet' --cfg-options 'optimizer.lr=1e-4' 'optimizer.weight_decay=1e-12'

